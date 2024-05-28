// -----JS CODE-----//
// @input Component.Text expressionTitleText
// @input SceneObject UiParent
// @input SceneObject startButton

const pubSub = require("./PubSubModule");

script.api.Start = function(){
   EnableGame();
}

 /***
  * Enable the first exercise in the sequence and some UI elements. Disable the start button.
  */
function EnableGame(){
   script.startButton.enabled = false;
   pubSub.publish(pubSub.EVENTS.ExpressionIndexEnabled);
}
