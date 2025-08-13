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
    script.debugUI.enabled = !script.debugUI.enabled;
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
    script.bilateralToggle_left.toggleOff();
    print("toggle off left should turn on right")
    // cannot turn of both side, if off right side detection is turned on
    var rightIsOff = !script.bilateralToggle_right.getToggleValue();
    if (rightIsOff)
        print("toggle of left turn on right")
        ToggleOnRight();
}

function ToggleOffRight(){
    pubSub.publish(pubSub.EVENTS.ToggleBilateralDetection_Right, false);
    script.bilateralToggle_right.toggleOff();
    print("toggle of right should turn on left")
    // cannot turn of both side, if off left side detection is turned on
    var leftIsOff = !script.bilateralToggle_left.getToggleValue();
    if (leftIsOff)
        print("toggle of right turn on left")
        ToggleOnLeft();
}

/***
  * Set left button on/off based on data
  */
pubSub.subscribe(pubSub.EVENTS.SetBilateralDetection_Left, (data) => {
    switch(data){
        case true:
            script.bilateralToggle_left.toggleOn();
            break;
        case false:
            script.bilateralToggle_left.toggleOff();
            break;
        default:
            print("ERROR")
            break;
    }
  });

/***
* Set right button on/off based on data
*/
pubSub.subscribe(pubSub.EVENTS.SetBilateralDetection_Right, (data) => {
    switch(data){
        case true:
           script.bilateralToggle_right.toggleOn();
           break;
        case false:
             script.bilateralToggle_right.toggleOff();
             break;
        default:
            print("ERROR")
            break;
    }
});

/***
  * Set button enabled/disabled based on data
  */
pubSub.subscribe(pubSub.EVENTS.SetBilateralDetection, (data) => {

      switch(data){
        case true:
            script.bilateralToggle_left.enabled = true;
            script.bilateralToggle_right.enabled = true;
            break;
        case false:
            script.bilateralToggle_left.enabled = false;
            script.bilateralToggle_right.enabled = false;
            break;
        default:
            print("ERROR")
            break;
    }
  });

