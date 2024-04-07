// -----JS CODE-----//
// @input Component.Text expressionTitleText
// @input SceneObject[] expressions
// @input SceneObject UiParent
// @input SceneObject startButton
// @input SceneObject prevButton
// @input SceneObject nextButton


let currentIndex = 0;
let exerciseSize = script.expressions.length;
script.prevButton.enabled = false;
script.nextButton.enabled = false;

script.api.CompleteExercise = function(){
   GoToNextExercise();
}

script.api.Next = function(){
   GoToNextExercise();
}

script.api.Previous = function(){
   GoToPreviousExercise();
}

script.api.Start = function(){
   EnableFirstExercise();
}

// Go to the Next exercise in the sequence and en/disable the prev and next button.
function GoToNextExercise() {
   previousIndex = currentIndex;
   currentIndex += 1;

   TryEnableNext();
   TryEnablePrev();

   script.expressions[previousIndex].enabled = false;
   script.expressions[currentIndex].enabled = true;
}

// Go to the previous exercise in the sequence and en/disable the prev and next button.
function GoToPreviousExercise() {
   previousIndex = currentIndex;
   currentIndex -= 1;

   TryEnableNext();
   TryEnablePrev();

   script.expressions[currentIndex].enabled = true;
   script.expressions[previousIndex].enabled = false;
}

// Enable the first exercise in the sequence and disable the start button.
function EnableFirstExercise(){
   currentIndex = 0;
   script.expressions[0].enabled = true;
   TryEnableNext();
   script.UiParent.enabled = true;
   script.startButton.enabled = false;
}

function TryEnableNext(){
   //print("Cur = " + currentIndex)
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
   // print("prev = " + previousIndex)\
   if (currentIndex == 0)
   {
      script.prevButton.enabled = false
   }
   else
   {
      script.prevButton.enabled = true;
   }
}