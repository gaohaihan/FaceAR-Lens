// -----JS CODE-----//
// @input Component.Text expressionTitleText
// @input SceneObject[] expressions
// @input SceneObject startButton
// @input SceneObject prevButton
// @input SceneObject nextButton


let currentIndex = 0;
let exerciseSize = script.expressions.length;
script.prevButton.enabled = false;
script.nextButton.enabled = true;

script.api.CompleteExercise = function(){
   GoToNextExercise();
}

script.api.Next = function(){
   GoToNextExercise();
}

script.api.Previous = function(){
   GoToPreviousExercise();
}

// Go to the Next exercise in the sequence and en/disable the prev and next button.
function GoToNextExercise() {
   previousIndex = currentIndex;
   currentIndex += 1;

   script.prevButton.enabled = true
   if (currentIndex == exerciseSize - 1)
   {
      script.nextButton.enabled = false
   }

   //print("prev = " + previousIndex)
   // print("Cur = " + currentIndex)

   script.expressions[previousIndex].enabled = false;
   script.expressions[currentIndex].enabled = true;
}

// Go to the previous exercise in the sequence and en/disable the prev and next button.
function GoToPreviousExercise() {
   previousIndex = currentIndex;
   currentIndex -= 1;

   script.nextButton.enabled = true;
   if (currentIndex == 0)
   {
      script.prevButton.enabled = false
   }

  // print("prev = " + previousIndex)
  // print("Cur = " + currentIndex)

   script.expressions[currentIndex].enabled = true;
   script.expressions[previousIndex].enabled = false;
}

// Enable the first exercise in the sequence and disable the start button.
script.api.EnableFirstExercise = function(){
   currentIndex = 0;
   script.expressions[0].enabled = true;
   script.startButton.enabled = false;
}