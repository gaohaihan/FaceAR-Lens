// -----JS CODE-----
// @input SceneObject obstacle
// @input float moveSpeed
// @input SceneObject ball

const pubSub = require("./PubSubModule");
var body = script.obstacle.getComponent("Physics.BodyComponent");
var transform = script.obstacle.getTransform();
var colliding = false
var collider = script.obstacle.getComponent("Physics.ColliderComponent");

// Filter to only detect collisions with ball.
var filter = Physics.Filter.create();
filter.skipLayers = LayerSet.fromNumber(101);
filter.onlyColliders = [script.ball.getComponent("Physics.ColliderComponent")];
collider.overlapFilter = filter;

function Start(){
  body.dynamic = false;
}

collider.onOverlapEnter.add(function (e) {
  print("overlap")
  colliding = true;
})

collider.onOverlapExit.add(function (e) {
  colliding = false;
})

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
}

function Move(amount){
  if(colliding === false)
  {
    var pos = transform.getLocalPosition();
    pos.x -= script.moveSpeed;
    transform.setLocalPosition(pos);
  }
}

pubSub.subscribe(pubSub.EVENTS.ExpressionIndexEnabled, () => {
  SetEvents();
  Start();
});