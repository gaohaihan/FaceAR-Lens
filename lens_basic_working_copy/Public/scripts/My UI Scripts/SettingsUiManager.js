// -----JS CODE-----
// @input SceneObject difficultyUI
// @input SceneObject bilateralUI
// @input Component.ScriptComponent bilateralToggle_left
// @input Component.ScriptComponent bilateralToggle_right

const pubSub = require("./PubSubModule");

script.api.ToggleOn_Left = ToggleOnLeft;
script.api.ToggleOn_Right = ToggleOnRight;
script.api.ToggleOff_Left = ToggleOffLeft
script.api.ToggleOff_Right = ToggleOffRight;

/***
 * Publish bilateral controls being toggle on/off
 */
function ToggleOnLeft(){
    pubSub.publish(pubSub.EVENTS.ToggleBilateralDetection_Left, true);
    script.bilateralToggle_left.api.toggleOn();
}

function ToggleOnRight(){
    pubSub.publish(pubSub.EVENTS.ToggleBilateralDetection_Right, true);
    script.bilateralToggle_right.api.toggleOn();
}

function ToggleOffLeft (){
    pubSub.publish(pubSub.EVENTS.ToggleBilateralDetection_Left, false);
    script.bilateralToggle_left.api.toggleOff();
    // cannot turn of both side, if off right side detection is turned on
    if (!script.bilateralToggle_right.api.getToggleValue())
        ToggleOnRight();
}

function ToggleOffRight(){
    pubSub.publish(pubSub.EVENTS.ToggleBilateralDetection_Right, false);
    script.bilateralToggle_right.api.toggleOff();
    // cannot turn of both side, if off left side detection is turned on
    if (!script.bilateralToggle_left.api.getToggleValue())
        ToggleOnLeft();
}

/***
  * Set left button on/off based on data
  */
pubSub.subscribe(pubSub.EVENTS.SetBilateralDetection_Left, (data) => {
    if (data === true)
        script.bilateralToggle_left.api.toggleOn();
    if (data === false)
        script.bilateralToggle_left.api.toggleOff();
  });

/***
* Set right button on/off based on data
*/
pubSub.subscribe(pubSub.EVENTS.SetBilateralDetection_Right, (data) => {
if (data === true)
    script.bilateralToggle_right.api.toggleOn();
if (data === false)
    script.bilateralToggle_right.api.toggleOff();
});

/***
  * Set left button on/off based on data
  */
pubSub.subscribe(pubSub.EVENTS.SetBilateralDetection, (data) => {
    if (data === true){
        script.bilateralToggle_left.api.enableInteractable();
        script.bilateralToggle_right.api.enableInteractable();
    }

    if (data === false){
        script.bilateralToggle_left.api.disableInteractable();
        script.bilateralToggle_right.api.disableInteractable();
    }

  });

