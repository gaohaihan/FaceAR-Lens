if (script.onAwake) {
	script.onAwake();
	return;
};
/*
@typedef CustomFunctions
@property {Component.ScriptComponent} script 
@property {string} function 
*/
function checkUndefined(property, showIf, showIfValue){
   if (showIf && script[showIf] != showIfValue){
       return;
   }
   if (script[property] == undefined){
       throw new Error('Input ' + property + ' was not provided for the object ' + script.getSceneObject().name);
   }
}
// @input bool editDebugSettings
checkUndefined("editDebugSettings", undefined, undefined);
// @ui {"widget":"group_start", "label":"Debug Statements", "showIf":"editDebugSettings"}
// @input bool printDebugStatements = "false" {"label":"Print Info"}
checkUndefined("printDebugStatements", undefined, undefined);
// @input bool printWarningStatements = "true" {"label":"Print Warnings"}
checkUndefined("printWarningStatements", undefined, undefined);
// @ui {"widget":"group_end"}
// @ui {"widget":"separator"}
// @input bool interactable = "true"
checkUndefined("interactable", undefined, undefined);
// @input bool blockTouches = "true" {"label":"Block System Swipe", "hint":"Blocks Snapchat's default swipe and pan behaviours."}
checkUndefined("blockTouches", undefined, undefined);
// @ui {"widget":"separator"}
// @input int renderOrder
checkUndefined("renderOrder", undefined, undefined);
// @ui {"widget":"separator"}
// @input int orientation {"widget":"combobox", "values":[{"label":"Horizontal", "value":0}, {"label":"Vertical", "value":1}]}
checkUndefined("orientation", undefined, undefined);
// @input float startValue = "0.0"
checkUndefined("startValue", undefined, undefined);
// @input float endValue = "1.0"
checkUndefined("endValue", undefined, undefined);
// @input float startSliderValue = "0.5" {"label":"Initial Value"}
checkUndefined("startSliderValue", undefined, undefined);
// @ui {"widget":"separator"}
// @input bool stepEnabled {"label":"Step"}
checkUndefined("stepEnabled", undefined, undefined);
// @input float stepValue {"label":"Step", "showIf":"stepEnabled"}
checkUndefined("stepValue", "stepEnabled", null);
// @input Asset.ObjectPrefab prefabSlider
checkUndefined("prefabSlider", undefined, undefined);
// @ui {"widget":"separator"}
// @input bool counterEnabled {"label":"Counter"}
checkUndefined("counterEnabled", undefined, undefined);
// @input int fractionDigits {"showIf":"counterEnabled"}
checkUndefined("fractionDigits", "counterEnabled", null);
// @ui {"widget":"separator"}
// @input bool trackBar
checkUndefined("trackBar", undefined, undefined);
// @input vec3 _trackBarColor = "{1.0, 1.0, 0.0}" {"label":"Color", "widget":"color", "showIf":"trackBar"}
checkUndefined("_trackBarColor", "trackBar", null);
// @ui {"widget":"separator"}
// @input bool eventCallbacks
checkUndefined("eventCallbacks", undefined, undefined);
// @ui {"widget":"group_start", "label":"Event Callbacks", "showIf":"eventCallbacks"}
// @input int callbackType = "0" {"widget":"combobox", "values":[{"label":"None", "value":0}, {"label":"Behavior Script", "value":1}, {"label":"Behavior Custom", "value":2}, {"label":"Custom Function", "value":3}]}
checkUndefined("callbackType", undefined, undefined);
// @input Component.ScriptComponent[] onValueChangedBehaviors {"showIf":"callbackType", "showIfValue":1}
checkUndefined("onValueChangedBehaviors", "callbackType", 1);
// @input string[] onValueChangedCustomTriggers {"showIf":"callbackType", "showIfValue":2}
checkUndefined("onValueChangedCustomTriggers", "callbackType", 2);
// @input CustomFunctions[] onValueChangedFunctions {"showIf":"callbackType", "showIfValue":3}
// @ui {"widget":"group_end"}
var scriptPrototype = Object.getPrototypeOf(script);
if (!global.BaseScriptComponent){
   function BaseScriptComponent(){}
   global.BaseScriptComponent = BaseScriptComponent;
   global.BaseScriptComponent.prototype = scriptPrototype;
   global.BaseScriptComponent.prototype.__initialize = function(){};
   global.BaseScriptComponent.getTypeName = function(){ 
       throw new Error("Cannot get type name from the class, not decorated with @component");
   }
}
var Module = require("../../Modules/Src/Slider");
Object.setPrototypeOf(script, Module.Slider.prototype);
script.__initialize();
if (script.onAwake) {
   script.onAwake();
}