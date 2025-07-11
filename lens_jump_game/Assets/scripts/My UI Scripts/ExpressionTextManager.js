// -----JS CODE-----
// @input Component.Text displayExpression
// @input Component.Text displayRepCount
// @input Component.Text displayRequiredRepCount
// @input Component.Text displaySetCount
// @input Component.Text displayRequiredSetCount
// @input Component.Text displayJumpCount

const pubSub = require("../PubSubModule");

// PROMPT
function SetPromptText(text){
    if (script.displayExpression != undefined)
        script.displayExpression.text = text;
}

pubSub.subscribe(pubSub.EVENTS.SetExpressionPromptText,
    data => {
        SetPromptText(data);
      }
 );

 // SETS
 function SetSetsText(text){
   if (script.displaySetCount != undefined)
        script.displaySetCount.text = text;
}

 pubSub.subscribe(pubSub.EVENTS.SetExpressionSetText,
    data => {
        SetSetsText(data);
      }
 );

 function SetRequiredSetsText(text){
     if (script.displayRequiredSetCount != undefined)
        script.displayRequiredSetCount.text = text;
}

 pubSub.subscribe(pubSub.EVENTS.SetExpressionRequiredSetText,
    data => {
        SetRequiredSetsText(data);
      }
 );


 // REPS
 function SetRepText(text){
    if (script.displayRepCount != undefined)
        script.displayRepCount.text = text;
}

 pubSub.subscribe(pubSub.EVENTS.SetExpressionRepText,
    data => {
        SetRepText(data);
      }
 );

 function SetRequiredRepText(text){
    if (script.displayRequiredRepCount != undefined)
        script.displayRequiredRepCount.text = text;
}

 pubSub.subscribe(pubSub.EVENTS.SetExpressionRequiredRepText,
    data => {
        SetRequiredRepText(data);
      }
 );

 // Jumps
function SetJumpText(text){
    if (script.displayJumpCount != undefined)
        script.displayJumpCount.text = text;
}

pubSub.subscribe(pubSub.EVENTS.SetJumpCountText,
    data => {
        SetJumpText(data);
      }
 );