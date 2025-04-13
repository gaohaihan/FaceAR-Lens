function scriptBody(script){ 
// This script just sets the text on the UI slider popup to
// the value of global Difficulty

// Do not use "Size to fit" for this text. It makes it look weird while the popup is re-sizing.

var rounded = Math.round(global.Difficulty * 100) / 100
script.DifficultyText.text = rounded.toString();

 }; module.exports = scriptBody;