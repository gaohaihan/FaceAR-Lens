// -----JS CODE-----
// @input SceneObject obstacle
// @input float moveSpeed
const pubSub = require("./PubSubModule");
var moveSpeed;
var body = script.obstacle.getComponent("Physics.BodyComponent");
var transform = script.obstacle.getTransform();
var colliding = false
function Start(){
// should be kenematic 
   body.dynamic = false;
   started = true;
   moveSpeed= Math.random(); 
}

/***
* Set functions to be called every frame
*/
function SetEvents() {
    var updateEvent = script.createEvent("UpdateEvent");
    updateEvent.bind(OnUpdate);
  }
  
  /***
  * Things to be called every frame
  */
  function OnUpdate(){
    Move();
    DetectHit()
  }
   // TODO find a better way to detect from all angles.
    function DetectHit(){
    // Create a probe to raycast through only the implicit root world.
    var rootProbe = Physics.createRootProbe();
    var startingPos = transform.getLocalPosition(); 
    var endOfRay = new vec3((startingPos.x - 2), startingPos.y, startingPos.z);
    rootProbe.rayCast(startingPos, endOfRay, function (hit) {
        if  (hit === null){
            colliding = false
            return;
        }
        colliding = true;
    });
   }
  

  function Move(amount){
    
    if(colliding === false)
    {
    var pos = transform.getLocalPosition();
    pos.x -= moveSpeed;
    transform.setLocalPosition(pos)
}
}

pubSub.subscribe(pubSub.EVENTS.ExpressionIndexEnabled, () => {
  SetEvents();
  Start();
});