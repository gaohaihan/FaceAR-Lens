if (script.onAwake) {
	script.onAwake();
	return;
};
function checkUndefined(property, showIf, showIfValue){
   if (showIf && script[showIf] != showIfValue){
       return;
   }
   if (script[property] == undefined){
       throw new Error('Input ' + property + ' was not provided for the object ' + script.getSceneObject().name);
   }
}
// @input SceneObject backgroundSO
checkUndefined("backgroundSO", undefined, undefined);
// @input SceneObject touchZoneSO
checkUndefined("touchZoneSO", undefined, undefined);
// @input SceneObject spareTouchZoneSO
checkUndefined("spareTouchZoneSO", undefined, undefined);
// @input SceneObject buttonSO
checkUndefined("buttonSO", undefined, undefined);
// @input SceneObject counterSO
checkUndefined("counterSO", undefined, undefined);
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
var Module = require("../../../../../Modules/Src/Slider Prefab/Resources/Scripts/SliderData");
Object.setPrototypeOf(script, Module.SliderData.prototype);
script.__initialize();
if (script.onAwake) {
   script.onAwake();
}