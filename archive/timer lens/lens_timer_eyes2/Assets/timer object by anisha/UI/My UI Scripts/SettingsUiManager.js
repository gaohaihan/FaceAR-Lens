// -----JS CODE-----
// @input SceneObject sensitivityUI
// @input SceneObject bilateralUI
// @input Component.ScriptComponent bilateralToggle_left
// @input Component.ScriptComponent bilateralToggle_right

const pubSub = require("./PubSubModule");

script.ToggleOn_Left = ToggleOnLeft;
script.ToggleOn_Right = ToggleOnRight;
script.ToggleOff_Left = ToggleOffLeft
script.ToggleOff_Right = ToggleOffRight;

/***
 * Toggle setting controls visibility
 */
script.SettingsToggle = function(){
        script.sensitivityUI.enabled = !script.sensitivityUI.enabled;
        script.bilateralUI.enabled = !script.bilateralUI.enabled;
}

/***
 * Publish bilateral controls being toggle on/off
 */
function ToggleOnLeft(){
    pubSub.publish(pubSub.EVENTS.ToggleBilateralDetection_Left, true);
    script.bilateralToggle_left.toggleOn();
}

function ToggleOnRight(){
    pubSub.publish(pubSub.EVENTS.ToggleBilateralDetection_Right, true);
    script.bilateralToggle_right.toggleOn();
}

function ToggleOffLeft (){
    pubSub.publish(pubSub.EVENTS.ToggleBilateralDetection_Left, false);
    // cannot turn of both side, if off right side detection is turned on
    if (!script.bilateralToggle_right.getToggleValue())
        ToggleOnRight();
}

function ToggleOffRight(){
    pubSub.publish(pubSub.EVENTS.ToggleBilateralDetection_Right, false);
    // cannot turn of both side, if off left side detection is turned on
    if (!script.bilateralToggle_left.getToggleValue())
        ToggleOnLeft();
}

/***
  * Set left button on/off based on data
  */
pubSub.subscribe(pubSub.EVENTS.SetBilateralDetection_Left, (data) => {
    if (data === true)
        script.bilateralToggle_left.toggleOn();
    if (data === false)
        script.bilateralToggle_left.toggleOff();
  });

/***
* Set right button on/off based on data
*/
pubSub.subscribe(pubSub.EVENTS.SetBilateralDetection_Right, (data) => {
if (data === true)
    script.bilateralToggle_right.toggleOn();
if (data === false)
    script.bilateralToggle_right.toggleOff();
});

/***
  * Set left button on/off based on data
  */
pubSub.subscribe(pubSub.EVENTS.SetBilateralDetection, (data) => {
    if (data === true){
        script.bilateralToggle_left.enableInteractable();
        script.bilateralToggle_right.enableInteractable();
    }

    if (data === false){
        script.bilateralToggle_left.disableInteractable();
        script.bilateralToggle_right.disableInteractable();
    }

  });

