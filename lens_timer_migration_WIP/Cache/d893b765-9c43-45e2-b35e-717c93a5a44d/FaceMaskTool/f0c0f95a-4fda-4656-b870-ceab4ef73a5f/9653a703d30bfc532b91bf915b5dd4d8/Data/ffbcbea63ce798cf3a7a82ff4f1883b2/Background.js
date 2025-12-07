"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.Background = void 0;
var __selfType = requireType("./Background");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const ModeSwitch_1 = require("./ModeSwitch");
const BackgroundType_1 = require("./BackgroundType");
const ObjectsControl_1 = require("./ObjectsControl");
const FaceMaskWrapper_1 = require("./FaceMaskWrapper");
let Background = class Background extends BaseScriptComponent {
    onAwake() {
        this.setTextures();
        this.setBackground(BackgroundType_1.BackgroundType.Texture);
        this.createEvent("UpdateEvent").bind(() => {
            this.checkForTextureUpdate();
        });
    }
    setBackground(index = this.prevBackgroundType) {
        if (this.textures[index]) {
            this.image.mainPass.baseTex = this.textures[index];
            if (!ObjectsControl_1.ObjectsControl.isDefault) {
                this.updateMaterial(this.textures[index]);
            }
            this.prevBackgroundType = index;
        }
    }
    updateMaterial(texture) {
        const width = texture.getWidth();
        const height = texture.getHeight();
        if (width > height) {
            this.frameMaterial.mainPass.shapeWidthX = this.defaultAspectRatio;
            this.frameMaterial.mainPass.shapeHeightY = this.defaultAspectRatio * height / width;
            this.regionAspectRatio.x = 1;
            this.regionAspectRatio.y = height / width * this.defaultAspectRatio;
        }
        else {
            this.frameMaterial.mainPass.shapeWidthX = width / height;
            this.frameMaterial.mainPass.shapeHeightY = 1;
            this.regionAspectRatio.x = width / height / this.defaultAspectRatio;
            this.regionAspectRatio.y = 1;
        }
        this.onAspectRatioChangeCallbacks.forEach((callback) => {
            callback(this.regionAspectRatio);
        });
    }
    checkForTextureUpdate() {
        var _a, _b, _c, _d;
        if (!((_b = (_a = FaceMaskWrapper_1.FaceMaskWrapper.getInstance()) === null || _a === void 0 ? void 0 : _a.mainMaterial) === null || _b === void 0 ? void 0 : _b.mainPass)) {
            return;
        }
        const material = FaceMaskWrapper_1.FaceMaskWrapper.getInstance().mainMaterial;
        let maskTexture = material.mainPass.opacityTex;
        if (!maskTexture) {
            maskTexture = material.mainPass.maskTex;
        }
        if (!material.mainPass.baseTex && !maskTexture) {
            return;
        }
        if ((material.mainPass.baseTex && !((_c = this.textures[0]) === null || _c === void 0 ? void 0 : _c.isSame(material.mainPass.baseTex))) ||
            (maskTexture && !((_d = this.textures[1]) === null || _d === void 0 ? void 0 : _d.isSame(maskTexture)))) {
            this.setTextures();
            this.setBackground(ModeSwitch_1.ModeSwitch.ActiveMode);
        }
    }
    setTextures() {
        var _a, _b;
        if (!((_b = (_a = FaceMaskWrapper_1.FaceMaskWrapper.getInstance()) === null || _a === void 0 ? void 0 : _a.mainMaterial) === null || _b === void 0 ? void 0 : _b.mainPass)) {
            return;
        }
        const material = FaceMaskWrapper_1.FaceMaskWrapper.getInstance().mainMaterial;
        if (material.mainPass.opacityTex) {
            this.textures = [material.mainPass.baseTex, material.mainPass.opacityTex];
        }
        else {
            this.textures = [material.mainPass.baseTex, material.mainPass.maskTex];
        }
    }
    getTexture() {
        return { type: this.prevBackgroundType, texture: this.textures[0] };
    }
    addOnAspectRationChangeCallback(cb) {
        this.onAspectRatioChangeCallbacks.push(cb);
    }
    __initialize() {
        super.__initialize();
        this.textures = [null, null];
        this.regionAspectRatio = new vec2(1, 1);
        this.defaultAspectRatio = 0.75;
        this.onAspectRatioChangeCallbacks = [];
    }
};
exports.Background = Background;
exports.Background = Background = __decorate([
    component
], Background);
//# sourceMappingURL=Background.js.map