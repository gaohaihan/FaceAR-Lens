// This script just sets the text on the UI slider popup to
// the value of global Sensitivity

// Do not use "Size to fit" for this text. It makes it look weird while the popup is re-sizing.
// @input Component.Text SensitivityText

print(global.Sensitivity.toString());
var rounded = Math.round(global.Sensitivity * 100) / 100
script.SensitivityText.text = rounded.toString();