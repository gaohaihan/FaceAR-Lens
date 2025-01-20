// @input Component.Text rightDebug
// @input Component.Text leftDebug
// @input Component.Text minExpressionWeight
// @input Component.Text combinedDebug

const pubSub = require("./PubSubModule");

 pubSub.subscribe(pubSub.EVENTS.SetLeftDebugText,
    data => {
        script.leftDebug.text = data;
      }
 );

 pubSub.subscribe(pubSub.EVENTS.SetRightDebugText,
    data => {
        script.rightDebug.text = data;
      }
 );

 pubSub.subscribe(pubSub.EVENTS.SetCombinedText,
    data => {
        script.combinedDebug.text = data;
      }
 );
 pubSub.subscribe(pubSub.EVENTS.SetMinExpressionWeightText,
    data => {
        script.minExpressionWeight.text = data;
      }
 );