//@input Component.ScreenTransform checkbox
//@input Component.Image checkmark
//@input Component.Text optionLabel

var isChecked = false;

function toggleCheckbox() {
    isChecked = !isChecked;
    script.checkmark.enabled = isChecked; // Show or hide the checkmark
    print("Checkbox for " + script.optionLabel.text + " is now " + (isChecked ? "checked" : "unchecked"));
    script.isChecked = isChecked;
}

// Add tap event
var tapEvent = script.createEvent("TapEvent");
tapEvent.bind(toggleCheckbox);
