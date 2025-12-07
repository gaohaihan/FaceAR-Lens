"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var EffectEditor_1;
Object.defineProperty(exports, "__esModule", { value: true });
exports.EffectEditor = void 0;
var __selfType = requireType("./EffectEditor");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const SelectionListener_1 = require("./SelectionListener");
let EffectEditor = EffectEditor_1 = class EffectEditor extends BaseScriptComponent {
    onAwake() {
        this.setupSelectionListener();
        this.createEvent("UpdateEvent").bind(() => {
            this.listenForChanges();
        });
        this.listenForChanges();
    }
    setupSelectionListener() {
        this.selectionListener = new SelectionListener_1.SelectionListener(this);
        this.selectionListener.setOnSelectionUpdate(() => {
            this.update();
        });
    }
    update() {
        EffectEditor_1.selectedObject = this.selectionListener.getSelectedObject();
        this.needUpdate = true;
    }
    listenForChanges() {
        if (isNull(EffectEditor_1.selectedObject)) {
            this.editorObject.enabled = false;
            this.defaultTextObject.enabled = true;
            // this.editorObject.getComponent("ScreenTransform").scale = vec3.zero();
            return;
        }
        //@ts-ignore
        let faceMaskComponents = EffectEditor_1.selectedObject.getComponents("FaceMaskVisual");
        if (faceMaskComponents.length != 1) {
            this.editorObject.enabled = false;
            this.defaultTextObject.enabled = true;
            // this.editorObject.getComponent("ScreenTransform").scale = vec3.zero();
            EffectEditor_1.faceMaskComponent = null;
            return;
        }
        EffectEditor_1.faceMaskComponent = faceMaskComponents[0];
        if (this.needUpdate) {
            this.needUpdate = false;
            if (this.pointsEditor) {
                this.pointsEditor.updateLocalPoints();
            }
        }
        this.defaultTextObject.enabled = false;
        this.editorObject.enabled = true;
        // this.editorObject.getComponent("ScreenTransform").scale = vec3.one();
    }
    __initialize() {
        super.__initialize();
        this.needUpdate = false;
        this.onModeChange = (mode) => {
            var _a;
            this.background.setBackground(mode);
            (_a = this.pointsEditor) === null || _a === void 0 ? void 0 : _a.updateLocalPoints();
        };
    }
};
exports.EffectEditor = EffectEditor;
exports.EffectEditor = EffectEditor = EffectEditor_1 = __decorate([
    component
], EffectEditor);
//# sourceMappingURL=EffectEditor.js.map