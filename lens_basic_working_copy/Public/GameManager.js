// -----JS CODE-----//
// @input Component.Text expressionTitleText
// @input SceneObject[] expressions
// @input SceneObject UiParent
// @input SceneObject startButton
// @input SceneObject prevButton
// @input SceneObject nextButton

const pubSub = require("./PubSubModule");

let currentIndex = 0;
script.prevButton.enabled = false;
script.nextButton.enabled = false;

script.api.CompleteExercise = function(){
   GoToNextExercise();
}

script.api.Next = function(){
   GoToNextExercise();
   pubSub.publish(pubSub.EVENTS.NextButtonClicked);
}

script.api.Previous = function(){
   GoToPreviousExercise();
   pubSub.publish(pubSub.EVENTS.PreviousButtonClicked);
}

script.api.Start = function(){
   pubSub.publish(pubSub.EVENTS.StartButtonClicked);
   EnableFirstExercise();
}

 /***
  * Go to the Next exercise in the sequence and en/disable the prev and next button.
  */
function GoToNextExercise() {
   previousIndex = currentIndex;
   currentIndex += 1;

   TryEnableNext();
   TryEnablePrev();

   script.expressions[previousIndex].enabled = false;
   script.expressions[currentIndex].enabled = true;

   print("current is " + currentIndex);
   pubSub.publish(pubSub.EVENTS.ExpressionIndexEnabled, currentIndex);
}

 /***
  * Go to the previous exercise in the sequence and en/disable the prev and next button.
  */
function GoToPreviousExercise() {
   previousIndex = currentIndex;
   currentIndex -= 1;

   TryEnableNext();
   TryEnablePrev();

   script.expressions[previousIndex].enabled = false;
   script.expressions[currentIndex].enabled = true;

   print("current is " + currentIndex);
   pubSub.publish(pubSub.EVENTS.ExpressionIndexEnabled, currentIndex);
}

 /***
  * Enable the first exercise in the sequence and some UI elements. Disable the start button.
  */
function EnableFirstExercise(){
   currentIndex = 0;
   script.expressions[0].enabled = true;

   TryEnableNext();

   script.UiParent.enabled = true;
   script.startButton.enabled = false;

   print("current is " + currentIndex);
   pubSub.publish(pubSub.EVENTS.ExpressionIndexEnabled, currentIndex);
}

function TryEnableNext(){
   let exerciseSize = script.expressions.length;
   if (currentIndex == exerciseSize - 1)
   {
      script.nextButton.enabled = false
   }
   else
   {
      script.nextButton.enabled = true;
   }
}

function TryEnablePrev(){
   let exerciseSize = script.expressions.length;
   if (currentIndex == 0)
   {
      script.prevButton.enabled = false
   }
   else
   {
      script.prevButton.enabled = true;
   }
}