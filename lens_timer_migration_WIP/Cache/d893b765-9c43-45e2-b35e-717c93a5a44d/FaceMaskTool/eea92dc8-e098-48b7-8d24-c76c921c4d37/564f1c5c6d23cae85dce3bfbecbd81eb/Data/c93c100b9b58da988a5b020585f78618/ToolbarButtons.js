"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.ToolbarButtons = void 0;
var __selfType = requireType("./ToolbarButtons");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const MessageCenter_1 = require("./MessageCenter/MessageCenter");
const FaceMaskMessages_1 = require("./MessageCenter/MessageTypes/FaceMaskMessages");
const Config_1 = require("../Shared/Config");
let ToolbarButtons = class ToolbarButtons extends BaseScriptComponent {
    onAwake() {
        MessageCenter_1.MessageCenter.instance.subscribe(FaceMaskMessages_1.SymmetricModeButtonMessage, (message) => {
            //@ts-ignore
            Config_1.Config.isSymmetrical = message.checked;
        });
        MessageCenter_1.MessageCenter.instance.subscribe(FaceMaskMessages_1.ResetPointsButtonMessage, (message) => {
            this.pointsEditor.reset();
        });
        MessageCenter_1.MessageCenter.instance.subscribe(FaceMaskMessages_1.TexturePreviewButtonMessage, (message) => {
            this.modeSwitch.onTexturePreviewButtonClicked();
        });
        MessageCenter_1.MessageCenter.instance.subscribe(FaceMaskMessages_1.OpacityPreviewButtonMessage, (message) => {
            this.modeSwitch.onOpacityPreviewButtonClicked();
        });
        MessageCenter_1.MessageCenter.instance.subscribe(FaceMaskMessages_1.ResetButtonMessage, (message) => {
            this.main.getLensRegion().resetPosition();
            this.main.getLensRegion().resetScale();
        });
        MessageCenter_1.MessageCenter.instance.subscribe(FaceMaskMessages_1.DetectButtonMessage, (message) => {
            this.landmarksDataController.detectFace();
        });
    }
};
exports.ToolbarButtons = ToolbarButtons;
exports.ToolbarButtons = ToolbarButtons = __decorate([
    component
], ToolbarButtons);
//# sourceMappingURL=ToolbarButtons.js.map