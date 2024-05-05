// -----JS CODE-----//
// @input Component.Text expressionTitleText
// @input SceneObject UiParent
// @input SceneObject startButton
// @input SceneObject prevButton
// @input SceneObject nextButton
// this index should include 0
// @input number maxIndex = 2;

const pubSub = require("./PubSubModule");

var currentIndex = 0;
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

   print("current is " + currentIndex);
   pubSub.publish(pubSub.EVENTS.ExpressionIndexEnabled, currentIndex);
}

 /***
  * Enable the first exercise in the sequence and some UI elements. Disable the start button.
  */
function EnableFirstExercise(){
   currentIndex = 0;
   TryEnableNext();

   print("current is " + currentIndex);
   pubSub.publish(pubSub.EVENTS.ExpressionIndexEnabled, currentIndex);
}

function TryEnableNext(){
   if (currentIndex == script.maxIndex)
   {
      script.nextButton.enabled = false
   }
   else
   {
      script.nextButton.enabled = true;
   }
}

function TryEnablePrev(){
   if (currentIndex == 0)
   {
      script.prevButton.enabled = false
   }
   else
   {
      script.prevButton.enabled = true;
   }
}