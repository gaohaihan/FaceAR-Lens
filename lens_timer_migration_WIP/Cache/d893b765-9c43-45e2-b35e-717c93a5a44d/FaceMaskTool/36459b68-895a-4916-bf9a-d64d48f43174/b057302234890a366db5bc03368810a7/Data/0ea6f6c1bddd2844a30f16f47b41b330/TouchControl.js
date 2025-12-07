"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.TouchControl = void 0;
const SelectionControl_1 = require("./Selection/SelectionControl");
const SelectedRect_1 = require("./Selection/SelectedRect");
const LensRegion_1 = require("../Common/Utilities/LensRegion/LensRegion");
class TouchControl {
    constructor(so, cam, onStartCallback, onMoveCallback, onDoubleTapCallback) {
        this.isPressed = false;
        this.lastPosition = vec2.zero();
        this.doubleTapMaxDelay = 1;
        this.lastTapTime = -1;
        this.so = so;
        this.cam = cam;
        this.onStartCallback = onStartCallback;
        this.onMoveCallback = onMoveCallback;
        this.onDoubleTapCallback = onDoubleTapCallback;
        this.createTouchComponentOnSceneObject();
        this.createScriptComponentWithEvents();
    }
    createTouchComponentOnSceneObject() {
        if (this.so.getComponents("Component.Image").length > 0) {
            this.image = this.so.getComponent("Component.Image");
        }
        const touchComponent = this.so.createComponent("Component.TouchComponent");
        touchComponent.setCamera(this.cam);
        touchComponent.addMeshVisual(this.image);
    }
    createScriptComponentWithEvents() {
        const scriptComponent = this.so.createComponent("Component.ScriptComponent");
        const touchStart = scriptComponent.createEvent("TouchStartEvent");
        touchStart.bind((eventData) => {
            if (TouchControl.isBusy || SelectionControl_1.SelectionControl.isBusy || SelectedRect_1.SelectedRect.isBusy || LensRegion_1.LensRegion.isBusy) {
                return;
            }
            TouchControl.isBusy = true;
            this.lastPosition = eventData.getTouchPosition();
            this.isPressed = true;
            this.onStartCallback(eventData.getTouchPosition());
        });
        const onMove = (eventData) => {
            if (this.isPressed) {
                this.onMoveCallback(eventData.getTouchPosition());
            }
        };
        const touchMove = scriptComponent.createEvent("TouchMoveEvent");
        touchMove.bind(onMove);
        const touchEnd = scriptComponent.createEvent("TouchEndEvent");
        touchEnd.bind((eventData) => {
            onMove(eventData);
            this.isPressed = false;
            TouchControl.isBusy = false;
        });
        const tapEvent = scriptComponent.createEvent("TapEvent");
        tapEvent.bind(() => {
            let currentTime = getTime();
            if (currentTime - this.lastTapTime < this.doubleTapMaxDelay) {
                this.onDoubleTapCallback();
                currentTime = -1;
            }
            this.lastTapTime = currentTime;
        });
    }
}
exports.TouchControl = TouchControl;
TouchControl.isBusy = false;
//# sourceMappingURL=TouchControl.js.map