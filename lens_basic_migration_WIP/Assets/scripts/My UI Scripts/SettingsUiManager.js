// -----JS CODE-----
// @input SceneObject difficultyUI
// @input SceneObject countUI
// @input SceneObject controlsUI
// @input SceneObject bilateralUI
// @input SceneObject debugUI
// @input Component.ScriptComponent bilateralToggle_left
// @input Component.ScriptComponent bilateralToggle_right

const pubSub = require("../PubSubModule");
script.ToggleOn_Left = ToggleOnLeft;
script.ToggleOn_Right = ToggleOnRight;
script.ToggleOff_Left = ToggleOffLeft
script.ToggleOff_Right = ToggleOffRight;
script.ToggleUI = ToggleUI;
script.ToggleDebugUI = ToggleDebugUI;

/***
 * Toggle UI
 */
function ToggleUI(){
    print("button hit")
    print(script.difficultyUI.enabled);
    script.difficultyUI.enabled = !script.difficultyUI.enabled;
    script.controlsUI.enabled = !script.controlsUI.enabled;
    script.countUI.enabled = !script.countUI.enabled;
}

/***
 * Toggle debug UI
 */
function ToggleDebugUI(){
    print("1")
    script.debugUI.enabled = !script.debugUI.enabled;
}
/***
 * Publish bilateral controls being toggle on/off
 */
function ToggleDebug(){
    print("2")
    pubSub.publish(pubSub.EVENTS.ToggleBilateralDetection_Left, true);
    script.bilateralToggle_left.toggleOn();
}
/***
 * Publish bilateral controls being toggle on/off
 */
function ToggleOnLeft(){
    print("left on")
    pubSub.publish(pubSub.EVENTS.ToggleBilateralDetection_Left, true);
    script.bilateralToggle_left.toggleOn();
}

function ToggleOnRight(){
    print("right on")
    pubSub.publish(pubSub.EVENTS.ToggleBilateralDetection_Right, true);
    script.bilateralToggle_right.toggleOn();
}

function ToggleOffLeft (){
    print("left off")
    pubSub.publish(pubSub.EVENTS.ToggleBilateralDetection_Left, false);
    script.bilateralToggle_left.toggleOff();
    print("toggle off left should turn on right")
    // cannot turn of both side, if off right side detection is turned on
    if (!script.bilateralToggle_right.getToggleValue())
        print("toggle of left turn on right")
        ToggleOnRight();
}

function ToggleOffRight(){
    print("right off")
    pubSub.publish(pubSub.EVENTS.ToggleBilateralDetection_Right, false);
    script.bilateralToggle_right.toggleOff();
    print("toggle of right should turn on left")
    // cannot turn of both side, if off left side detection is turned on
    if (!script.bilateralToggle_left.getToggleValue())
        print("toggle of right turn on left")
        ToggleOnLeft();
}

/***
  * Set left button on/off based on data
  */
pubSub.subscribe(pubSub.EVENTS.SetBilateralDetection_Left, (data) => {
    if (data === true)
        print("left on")
        script.bilateralToggle_left.toggleOn();
    if (data === false)
        print("left off")
        script.bilateralToggle_left.toggleOff();
  });

/***
* Set right button on/off based on data
*/
pubSub.subscribe(pubSub.EVENTS.SetBilateralDetection_Right, (data) => {
if (data === true)
    print("right on")
    script.bilateralToggle_right.toggleOn();
if (data === false)
    print("right off")
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

