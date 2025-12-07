"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Point = void 0;
const TouchControl_1 = require("../TouchControl");
const Config_1 = require("../../Shared/Config");
const SharedContent_1 = require("../../Shared/SharedContent");
var iState;
(function (iState) {
    iState[iState["Active"] = 0] = "Active";
    iState[iState["Hover"] = 1] = "Hover";
    iState[iState["Selected"] = 2] = "Selected";
    iState[iState["Default"] = 3] = "Default";
})(iState || (iState = {}));
class Point {
    constructor(sceneObject, id, onUpdate) {
        this.isActive = false;
        this.selected = false;
        this._initialPosition = null;
        this._currentPosition = null;
        this.offset = new vec2(0, 0);
        this.sceneObject = sceneObject;
        this.sceneObject.enabled = true;
        this.screenTransform = this.sceneObject.getComponent("Component.ScreenTransform");
        this.image = this.sceneObject.getComponent("Component.Image");
        this.initScale = this.screenTransform.scale;
        this.id = id;
        this.onUpdate = onUpdate;
        this.initButton();
    }
    setScale(newScale) {
        const val = this.initScale.uniformScale(newScale);
        val.z = this.initScale.z;
        this.screenTransform.scale = val;
    }
    set position(newPosition) {
        this._currentPosition = newPosition;
        if (!this._initialPosition) {
            this._initialPosition = newPosition;
        }
        this.screenTransform.anchors.setCenter(newPosition);
    }
    get position() {
        return this._currentPosition;
    }
    get worldPosition() {
        return this.screenTransform.localPointToWorldPoint(vec2.zero());
    }
    get screenPosition() {
        return this.screenTransform.localPointToScreenPoint(vec2.zero());
    }
    set screenPosition(pos) {
        this.position = this.screenTransform.screenPointToParentPoint(pos);
    }
    get isLocked() {
        return this.isActive;
    }
    get initialPosition() {
        return this._initialPosition;
    }
    set delta(delta) {
        this.position = this._initialPosition.add(delta);
    }
    addScreenDelta(delta, syncWithSymmetricPoint = false) {
        const localDelta = this.screenTransform.screenPointToParentPoint(this.screenPosition.add(delta)).sub(this.position);
        this.addDelta(localDelta, syncWithSymmetricPoint);
    }
    addDelta(delta, syncWithSymmetricPoint = false) {
        this.position = this._currentPosition.add(delta);
        if (syncWithSymmetricPoint && Config_1.Config.isSymmetrical && this.symmetricalPoint && !this.symmetricalPoint.isSelected) {
            delta.x *= -1;
            this.symmetricalPoint.addDelta(delta);
            delta.x *= -1;
        }
        this.onUpdate();
    }
    setSymmetricalPoint(point) {
        this.symmetricalPoint = point;
    }
    setActive(value, newPosition = this._currentPosition, needUpdate = false) {
        this.isActive = value;
        if (this.isActive) {
            if (this.selected) {
                this.image.mainPass.iState = iState.Selected;
            }
            else {
                this.image.mainPass.iState = iState.Active;
            }
        }
        else {
            this.image.mainPass.iState = iState.Default;
        }
        this.position = newPosition;
        if (needUpdate) {
            this.onUpdate();
        }
    }
    hide() {
        this.sceneObject.enabled = false;
    }
    show() {
        this.sceneObject.enabled = true;
    }
    isEnabled() {
        return this.sceneObject.enabled;
    }
    containsScreenPoint(pos) {
        return this.screenTransform.containsScreenPoint(pos);
    }
    set isSelected(value) {
        this.selected = value;
        if (value) {
            if (this.isActive) {
                this.image.mainPass.iState = iState.Selected;
            }
        }
        else {
            if (this.isActive) {
                this.image.mainPass.iState = iState.Active;
            }
            else {
                this.image.mainPass.iState = iState.Default;
            }
        }
    }
    get isSelected() {
        return this.selected;
    }
    update() {
        this.onUpdate();
    }
    initButton() {
        const onMoveCallback = (position) => {
            const newPosition = this.screenTransform.screenPointToParentPoint(position).add(this.offset);
            if (Config_1.Config.isSymmetrical && this.symmetricalPoint && !this.symmetricalPoint.isSelected) {
                const delta = newPosition.sub(this.position);
                delta.x *= -1;
                this.symmetricalPoint.addDelta(delta);
                this.symmetricalPoint.setActive(true);
            }
            this.setActive(true, newPosition, true);
        };
        const onStartCallback = (position) => {
            this.offset = this.position.sub(this.screenTransform.screenPointToParentPoint(position));
        };
        const onDoubleTapCallback = () => {
            if (Config_1.Config.isSymmetrical && this.symmetricalPoint) {
                this.symmetricalPoint.setActive(false);
            }
            this.setActive(false, this.position, true);
        };
        this.button = new TouchControl_1.TouchControl(this.sceneObject, SharedContent_1.SharedContent.getInstance().orthoCamera, onStartCallback, onMoveCallback, onDoubleTapCallback);
        this.sceneObject.enabled = true;
        this._initialPosition = this.position;
    }
}
exports.Point = Point;
//# sourceMappingURL=Point.js.map