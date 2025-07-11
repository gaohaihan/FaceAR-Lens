// -----JS CODE-----
// @input Asset.ObjectPrefab prefab
// @input float moveSpeed
// @input SceneObject ball

const pubSub = require("../PubSubModule");
var obstacle;
var body;
var colliding = false
var collider;
var counted = false;
var count = 0;

// Filter to only detect collisions with ball.
var filter = Physics.Filter.create();
filter.skipLayers = LayerSet.fromNumber(101);
filter.onlyColliders = [script.ball.getComponent("Physics.ColliderComponent")];


function Start(){
  obstacle = createObjectFromPrefab();
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
  print("Pause" + global.Pause)
  if(global.Pause == false){
    Move();
    DestroyAndSpawn();
    CountJump();
  };
}

function Move(amount){
  if(colliding === false && obstacle != undefined)
  {
    var pos = obstacle.getTransform().getLocalPosition();
    pos.x -= script.moveSpeed;
    obstacle.getTransform().setLocalPosition(pos);
  }
}

function DestroyAndSpawn(){
 if (obstacle != undefined){
    var pos = obstacle.getTransform().getWorldPosition();
    if(pos.x < -30.0){
      obstacle.destroy();
      createObjectFromPrefab();
    }

 }
}


function CountJump(){
 if (obstacle != undefined){
    var pos = obstacle.getTransform().getWorldPosition();
    if(pos.x < 0 && counted == false ){
      counted = true;
      count += 1;
        pubSub.publish(pubSub.EVENTS.SetJumpCountText,  count.toString() );
    }

 }
}

function createObjectFromPrefab() {
  if (script.prefab) {
    var pos = script.getTransform().getWorldPosition();
    obstacle = script.prefab.instantiate(script.getSceneObject());
    obstacle.getTransform().setWorldPosition(pos);

    body = obstacle.getComponent("Physics.BodyComponent");
    body.dynamic = false;

    colliding = false
    collider = obstacle.getComponent("Physics.ColliderComponent");
    collider.overlapFilter = filter;
    SetColliderFilter();

    counted = false;

    return obstacle;
  } else {
    return undefined;
  }
}

function SetColliderFilter(){
  if(collider){
    collider.onOverlapEnter.add(function (e) {
      print("overlap")
      colliding = true;
    })

    collider.onOverlapExit.add(function (e) {
      colliding = false;
  })
  }
}

pubSub.subscribe(pubSub.EVENTS.ExpressionIndexEnabled, () => {
  if (obstacle != undefined){
    obstacle.destroy();
  }
  Start();
  SetEvents();
});
