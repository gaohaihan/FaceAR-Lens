//@input SceneObject overlayCamera
//@input SceneObject[] checkboxes

function onTapped(eventData) {
    // Disable the overlay camera
    if (script.overlayCamera) {
        script.overlayCamera.enabled = false;
    } else {
        print("Error");
    }
    SendEnabledExercises();
}

function SendEnabledExercises(eventData) {
    var enabledCheckboxes = [];

    // Loop through each checkbox and check its state
    for (var i = 0; i < script.checkboxes.length; i++) {
        var checkboxScript = script.checkboxes[i].getComponent("Component.ScriptComponent");
      //  print(checkboxScript);
        if (checkboxScript && checkboxScript.isChecked) {
            enabledCheckboxes.push(script.checkboxes[i].name); // Add the name or other identifier
        }
    }

    print("Enabled checkboxes: " + enabledCheckboxes.join(", "));
}

// Bind the tap event
var tapEvent = script.createEvent("TapEvent");
tapEvent.bind(onTapped);
