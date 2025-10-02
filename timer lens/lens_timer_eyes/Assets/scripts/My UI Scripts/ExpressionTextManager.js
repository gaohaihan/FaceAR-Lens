// -----JS CODE-----
// @input Component.Text displayExpression
// @input Component.Text displayRepCount
// @input Component.Text displayRequiredRepCount
// @input Component.Text displaySetCount
// @input Component.Text displayRequiredSetCount

const pubSub = require("../PubSubModule");

// PROMPT
function SetPromptText(text){
    script.displayExpression.text = text;
}

pubSub.subscribe(pubSub.EVENTS.SetExpressionPromptText,
    data => {
        SetPromptText(data);
      }
 );

 // SETS
 function SetSetsText(text){
    script.displaySetCount.text = text;
}

 pubSub.subscribe(pubSub.EVENTS.SetExpressionSetText,
    data => {
        SetSetsText(data);
      }
 );

 function SetRequiredSetsText(text){
    script.displayRequiredSetCount.text = text;
}

 pubSub.subscribe(pubSub.EVENTS.SetExpressionRequiredSetText,
    data => {
        SetRequiredSetsText(data);
      }
 );


 // REPS
 function SetRepText(text){
    script.displayRepCount.text = text;
}

 pubSub.subscribe(pubSub.EVENTS.SetExpressionRepText,
    data => {
        SetRepText(data);
      }
 );

 function SetRequiredRepText(text){
    script.displayRequiredRepCount.text = text;
}

 pubSub.subscribe(pubSub.EVENTS.SetExpressionRequiredRepText,
    data => {
        SetRequiredRepText(data);
      }
 );