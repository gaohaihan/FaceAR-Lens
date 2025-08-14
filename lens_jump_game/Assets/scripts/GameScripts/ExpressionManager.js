// -----JS CODE-----
// @input Component.Text input

const pubSub = require("../PubSubModule");
global.Expression = "JawOpen"

script.SetExpressionName = SetExpressionName;

/***
 * Set value of global expression to value of text when method called.
 */
function SetExpression(expressionName){
    global.Expression = expressionName;
}

/***
 * Method to expose button. Only for dev
 */
function SetExpressionName(){
    print("expression text is" + script.input.text)
    SetExpression(script.input.text);
 }