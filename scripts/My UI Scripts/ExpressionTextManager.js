// -----JS CODE-----
// @input Component.Text displayExpression
// @input Component.Text displayRepCount
// @input Component.Text displayRequiredRepCount

const pubSub = require("./PubSubModule");

function SetPromptText(text){
    script.displayExpression.text = text;
}

pubSub.subscribe(pubSub.EVENTS.SetExpressionPromptText,
    data => {
        SetPromptText(data);
      }
 );


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