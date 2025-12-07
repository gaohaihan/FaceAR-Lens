"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var ObjectsControl_1;
Object.defineProperty(exports, "__esModule", { value: true });
exports.ObjectsControl = void 0;
var __selfType = requireType("./ObjectsControl");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const FaceMaskWrapper_1 = require("./FaceMaskWrapper");
let ObjectsControl = ObjectsControl_1 = class ObjectsControl extends BaseScriptComponent {
    onAwake() {
        this.proxy = FaceMaskWrapper_1.FaceMaskWrapper.getInstance();
        this.defaultTexture = this.emptyStateImage.mainPass.baseTex;
        this.updateEvent = this.createEvent("UpdateEvent");
        this.updateEvent.bind(() => {
            this.onUpdate();
        });
    }
    onUpdate() {
        if (this.proxy && (this.proxy.useOriginalTexCoords != ObjectsControl_1.isDefault)) {
            ObjectsControl_1.isDefault = this.proxy.useOriginalTexCoords;
            this.switchObjs(!ObjectsControl_1.isDefault);
        }
    }
    switchObjs(state) {
        this.faceImage.enabled = state;
        this.emptyStateImage.enabled = !state;
        this.objsToDisable.forEach((obj) => {
            obj.enabled = state;
        });
        if (state) {
            this.backgroundControl.setBackground();
        }
        else {
            this.backgroundControl.updateMaterial(this.defaultTexture);
        }
    }
};
exports.ObjectsControl = ObjectsControl;
ObjectsControl.isDefault = false;
exports.ObjectsControl = ObjectsControl = ObjectsControl_1 = __decorate([
    component
], ObjectsControl);
//# sourceMappingURL=ObjectsControl.js.map