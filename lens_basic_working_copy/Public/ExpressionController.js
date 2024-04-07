// -----JS CODE-----//
// @input Component.ScriptComponent expression
// @input Component.Text expressionTitleText

script.expressionTitleText.text = "hello";
DisplayExpressionText(script.expressionTitleText, script.expressions)

function DisplayExpressionText(expressionText, weight) {
   script.expression.api.EnableComponents();
   let title = script.expression.api.GetExpressionName();
   expressionText.text = title;
   }
