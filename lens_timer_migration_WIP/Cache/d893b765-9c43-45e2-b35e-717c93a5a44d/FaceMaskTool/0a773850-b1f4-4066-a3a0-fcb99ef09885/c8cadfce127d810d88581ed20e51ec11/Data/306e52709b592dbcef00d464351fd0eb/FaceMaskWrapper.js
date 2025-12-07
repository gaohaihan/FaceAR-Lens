"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.FaceMaskWrapper = void 0;
const EffectEditor_1 = require("./EffectEditor");
const SceneUtils_1 = require("./SceneUtils");
class FaceMaskWrapper {
    static getInstance() {
        if (!this._instance) {
            this._instance = new FaceMaskWrapper();
        }
        if (!this._instance.isValid) {
            return null;
        }
        return this._instance;
    }
    constructor() {
        this._mainMaterial = null; // TODO: Add pass info to editor API to remove this hack
    }
    get textureCoords() {
        if (isNull(EffectEditor_1.EffectEditor.faceMaskComponent)) {
            return null;
        }
        return this.convertVec2ToArr(EffectEditor_1.EffectEditor.faceMaskComponent.textureCoordinates);
    }
    set textureCoords(coords) {
        if (isNull(EffectEditor_1.EffectEditor.faceMaskComponent)) {
            return;
        }
        EffectEditor_1.EffectEditor.faceMaskComponent.textureCoordinates = this.convertArrToVec2(coords);
    }
    get maskCoords() {
        if (isNull(EffectEditor_1.EffectEditor.faceMaskComponent)) {
            return null;
        }
        return this.convertVec2ToArr(EffectEditor_1.EffectEditor.faceMaskComponent.maskCoordinates);
    }
    set maskCoords(coords) {
        if (isNull(EffectEditor_1.EffectEditor.faceMaskComponent)) {
            return;
        }
        EffectEditor_1.EffectEditor.faceMaskComponent.maskCoordinates = this.convertArrToVec2(coords);
    }
    get mainMaterial() {
        this.updateMaterial();
        return this._mainMaterial;
    }
    get isValid() {
        return !isNull(EffectEditor_1.EffectEditor.faceMaskComponent);
    }
    get useOriginalTexCoords() {
        var _a;
        if (isNull(EffectEditor_1.EffectEditor.faceMaskComponent)) {
            return false;
        }
        return (_a = EffectEditor_1.EffectEditor.faceMaskComponent) === null || _a === void 0 ? void 0 : _a.useOriginalTexCoords;
    }
    updateMaterial() {
        var _a, _b;
        if (!isNull(EffectEditor_1.EffectEditor.faceMaskComponent)) {
            //@ts-ignore
            this._mainMaterial = (_b = (_a = SceneUtils_1.SceneUtils.findObjectInLensCore(EffectEditor_1.EffectEditor.selectedObject)) === null || _a === void 0 ? void 0 : _a.getComponent("FaceMaskVisual")) === null || _b === void 0 ? void 0 : _b.mainMaterial;
            if (!this._mainMaterial) {
                this._mainMaterial = null;
            }
        }
        else {
            this._mainMaterial = null;
        }
    }
    convertVec2ToArr(arr) {
        const res = [];
        arr.forEach((vec) => {
            res.push(vec.x);
            res.push(vec.y);
        });
        return res;
    }
    convertArrToVec2(arr) {
        const res = [];
        for (let i = 0; i < arr.length; i += 2) {
            res.push(new vec2(arr[i], arr[i + 1]));
        }
        return res;
    }
}
exports.FaceMaskWrapper = FaceMaskWrapper;
FaceMaskWrapper._instance = null;
//# sourceMappingURL=FaceMaskWrapper.js.map