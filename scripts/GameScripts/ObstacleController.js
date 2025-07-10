// -----JS CODE-----
// @input Asset.ObjectPrefab prefab
// @input float moveSpeed
// @input SceneObject ball

const pubSub = require("../PubSubModule");
var body;
var colliding = false
var collider;

// Filter to only detect collisions with ball.
var filter = Physics.Filter.create();
filter.skipLayers = LayerSet.fromNumber(101);
filter.onlyColliders = [script.ball.getComponent("Physics.ColliderComponent")];


function Start(){
  obstacle = createObjectFromPrefab();
  print("created");
  body = obstacle.getComponent("Physics.BodyComponent");

  colliding = false
  collider = obstacle.getComponent("Physics.ColliderComponent");
  collider.overlapFilter = filter;

  body.dynamic = false;
  SetColliderFilter();
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
  if(global.Pause == false)
    Move();
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

function Move(amount){
  if(colliding === false && obstacle != undefined)
  {
    var pos = obstacle.getTransform().getLocalPosition();
    pos.x -= script.moveSpeed;
    obstacle.getTransform().setLocalPosition(pos);
  }
}

function createObjectFromPrefab() {
  if (script.prefab) {
    print("SPAWN")
    var pos = script.getTransform().getWorldPosition();
    obstacle = script.prefab.instantiate(script.getSceneObject());
    obstacle.getTransform().setWorldPosition(pos);

    return obstacle;
  } else {
    return undefined;
  }
}

pubSub.subscribe(pubSub.EVENTS.ExpressionIndexEnabled, () => {
  Start();
  SetEvents();
});