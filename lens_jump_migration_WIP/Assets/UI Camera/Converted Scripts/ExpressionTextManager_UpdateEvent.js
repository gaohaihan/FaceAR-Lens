// @input Component.Text displayExpression
// @input Component.Text displayRepCount
// @input Component.Text displayRequiredRepCount
script.createEvent("UpdateEvent").bind(function() { require("ExpressionTextManager_wrapped")(script)})