// -----JS CODE-----
// @input bool isRightDetectionOn
// @input bool isLeftDetectionOn


 /***
  * Publish expressions values for bilateral detection so the UI reflects its values.
  */
function SetBilateralDetection(visualComponent) {
    // enable bilateral controls
    pubSub.publish(pubSub.EVENTS.SetBilateralDetection, true);
    // set buttons on/off
    pubSub.publish(pubSub.EVENTS.SetBilateralDetection_Left, script.isLeftDetectionOn);
    pubSub.publish(pubSub.EVENTS.SetBilateralDetection_Right, script.isRightDetectionOn);
 }

/***
  * Determine if should detect left side movement based on UI buttons being toggled
  */
pubSub.subscribe(pubSub.EVENTS.ToggleBilateralDetection_Left, (data) => {
  script.isLeftDetectionOn = data
  print("left is" + script.isLeftDetectionOn)
});

/***
  * Determine if should detect right side movement based on UI buttons being toggled
  */
pubSub.subscribe(pubSub.EVENTS.ToggleBilateralDetection_Right, (data) => {
  script.isRightDetectionOn = data
  print("right is" + script.isRightDetectionOn)
});
