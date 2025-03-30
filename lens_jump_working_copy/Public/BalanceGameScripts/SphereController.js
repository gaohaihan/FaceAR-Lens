// -----JS CODE-----
// @input SceneObject ball
// @input SceneObject altBall
var reSpawnThreshhold = -50.00;
var jumpCount = 0;
var started = false;
var originalPos = script.ball.getTransform().getLocalPosition();
var body = script.ball.getComponent("Physics.BodyComponent");
var transform = script.ball.getTransform();

// this number determins how difficult it is to make a jump, a higher number the easeir it will be
// this number will need to adjust according to the needs of our users. 
var sensitivityThrehold = 5;
const pubSub = require("./PubSubModule");

function Start(){
    // enable physics
   body.dynamic = true;
   started = true;
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
   Respawn();
  }

function Jump(amount){
var jumpForce = amount * sensitivityThrehold;
var pos = transform.getLocalPosition();

  // ball cannot go off screen
  if(started && pos.y > 10){
  transform.setLocalPosition(originalPos);
  }
  body.addForce(new vec3(0.0,jumpForce, 0.0), Physics.ForceMode.Impulse)
}

/**
 * Respawn ball if it falls below a certain threshhold on the Y axis
 * This is a safey mesure, idk how the ball would fall below the platform. 
 */
function Respawn(){
  var pos = transform.getLocalPosition();
  if (pos.y < reSpawnThreshhold){
    transform.setLocalPosition(originalPos);
  }
}

pubSub.subscribe(pubSub.EVENTS.ExpressionIndexEnabled, () => {
  SetEvents();
  Start();
});

pubSub.subscribe(pubSub.EVENTS.SetJumpAmount, (data) => {
  Jump(data);
});