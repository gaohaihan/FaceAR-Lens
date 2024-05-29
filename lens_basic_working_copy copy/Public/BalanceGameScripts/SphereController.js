// -----JS CODE-----
// @input SceneObject ball
// @input SceneObject altBall
var reSpawnThreshhold = -50.00; 
var originalPos = script.ball.getTransform().getLocalPosition();
var fallCount = 0;
const pubSub = require("./PubSubModule");
function Start(){
    // enable physics
   script.ball.getComponent("Physics.BodyComponent").dynamic = true;
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
    BallDrop()
  }

  /**
   * Respawn ball if it falls below a certain threshhold on the Y axis
   * Increase fall count
   */
  function BallDrop(){
    var pos = script.ball.getTransform().getLocalPosition();
    if (pos.y < reSpawnThreshhold){
        script.ball.getTransform().setWorldPosition(originalPos);
        fallCount += 1; 
        pubSub.publish(pubSub.EVENTS.SetExpressionRepText,  fallCount.toString());
    }
  }

pubSub.subscribe(pubSub.EVENTS.ExpressionIndexEnabled, () => {
  SetEvents();
  Start();
});