// -----JS CODE-----
// @input SceneObject ball
// @input SceneObject altBall
var reSpawnThreshhold = -50.00;
var jumpCount = 0;
var started = false;
var originalPos = script.ball.getTransform().getLocalPosition();
var body = script.ball.getComponent("Physics.BodyComponent");
var transform = script.ball.getTransform();
// TODO add expression min detection; 
var BaseExpressionValue = 0.02;


const pubSub = require("../PubSubModule");

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

  // Jump if raw expression weight is greater than current difficulty thresh hold.
function Jump(rawWeight){
  currentDifficulty = GetDifficulty();
  var jumpForce = 0; 
  if(rawWeight > currentDifficulty)
  {
    jumpForce = 5;
  }
  else{
    jumpForce = 0; 
  }


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

// todo move this logic to a new compy of expressionController_balance called expressionController_jump
function GetDifficulty(){
  var minDifficulty = BaseExpressionValue + 0.05
  currentDifficulty = minDifficulty / ( 1 - global.Difficulty);

  // cannot be detected over 1
  if (currentDifficulty > 1)
    currentDifficulty = 1;

  return currentDifficulty;
}
pubSub.subscribe(pubSub.EVENTS.ExpressionIndexEnabled, () => {
  SetEvents();
  Start();
});

pubSub.subscribe(pubSub.EVENTS.SetJumpAmount, (data) => {
  Jump(data);
});