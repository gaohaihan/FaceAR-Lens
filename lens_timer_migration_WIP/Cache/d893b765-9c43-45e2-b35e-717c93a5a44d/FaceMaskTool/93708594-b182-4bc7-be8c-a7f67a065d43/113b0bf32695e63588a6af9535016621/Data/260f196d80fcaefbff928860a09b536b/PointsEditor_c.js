if (script.onAwake) {
	script.onAwake();
	return;
};
function checkUndefined(property, showIfData){
   for (var i = 0; i < showIfData.length; i++){
       if (showIfData[i][0] && script[showIfData[i][0]] != showIfData[i][1]){
           return;
       }
   }
   if (script[property] == undefined){
      throw new Error('Input ' + property + ' was not provided for the object ' + script.getSceneObject().name);
   }
}
// @input Component.ScriptComponent selectionControl
// @input SceneObject pointReference
// @input Component.FaceMaskVisual localFaceMask
// @input Component.ScriptComponent main
// @input Component.ScriptComponent background
// @input Component.ScreenTransform pointsRegion
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
var Module = require("../../../../../Modules/Src/Assets/Scripts/Editor/PointsEditor");
Object.setPrototypeOf(script, Module.PointsEditor.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("selectionControl", []);
    checkUndefined("pointReference", []);
    checkUndefined("localFaceMask", []);
    checkUndefined("main", []);
    checkUndefined("background", []);
    checkUndefined("pointsRegion", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
