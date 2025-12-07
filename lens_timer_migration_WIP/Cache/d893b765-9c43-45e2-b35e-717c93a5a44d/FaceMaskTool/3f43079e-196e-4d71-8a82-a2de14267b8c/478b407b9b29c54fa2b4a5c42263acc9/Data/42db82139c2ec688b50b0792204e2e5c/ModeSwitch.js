"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var ModeSwitch_1;
Object.defineProperty(exports, "__esModule", { value: true });
exports.ModeSwitch = void 0;
var __selfType = requireType("./ModeSwitch");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const BackgroundType_1 = require("./BackgroundType");
const FaceMaskWrapper_1 = require("./FaceMaskWrapper");
let ModeSwitch = ModeSwitch_1 = class ModeSwitch extends BaseScriptComponent {
    onAwake() {
        this.onModeChange = (mode) => {
            this.effectEditor.onModeChange(mode);
        };
    }
    onTexturePreviewButtonClicked() {
        if (!FaceMaskWrapper_1.FaceMaskWrapper.getInstance()) {
            return;
        }
        ModeSwitch_1.ActiveMode = BackgroundType_1.BackgroundType.Texture;
        this.onModeChange(ModeSwitch_1.ActiveMode);
    }
    onOpacityPreviewButtonClicked() {
        if (!FaceMaskWrapper_1.FaceMaskWrapper.getInstance()) {
            return;
        }
        ModeSwitch_1.ActiveMode = BackgroundType_1.BackgroundType.Opacity;
        this.onModeChange(ModeSwitch_1.ActiveMode);
    }
};
exports.ModeSwitch = ModeSwitch;
ModeSwitch.ActiveMode = BackgroundType_1.BackgroundType.Texture;
exports.ModeSwitch = ModeSwitch = ModeSwitch_1 = __decorate([
    component
], ModeSwitch);
//# sourceMappingURL=ModeSwitch.js.map