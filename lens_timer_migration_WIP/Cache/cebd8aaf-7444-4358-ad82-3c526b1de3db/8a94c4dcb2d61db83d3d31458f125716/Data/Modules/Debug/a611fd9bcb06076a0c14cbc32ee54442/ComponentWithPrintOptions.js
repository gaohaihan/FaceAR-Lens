"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.ComponentWithPrintOptions = void 0;
class ComponentWithPrintOptions extends BaseScriptComponent {
    printDebug(message) {
        if (this.printDebugStatements) {
            print(this.name + " - " + message);
        }
    }
    printWarning(message) {
        if (this.printWarningStatements) {
            print(this.name + " - WARNING, " + message);
        }
    }
}
exports.ComponentWithPrintOptions = ComponentWithPrintOptions;
