"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.SidePoint = void 0;
const SelectionControl_1 = require("./SelectionControl");
const SelectedRect_1 = require("./SelectedRect");
const LensRegion_1 = require("../../Common/Utilities/LensRegion/LensRegion");
class SidePoint {
    constructor(script, root, parentScreenTransform, points) {
        this.EPS = 1e-3;
        this.script = script;
        this.root = root;
        this.points = points;
        this.screenTransform = root.getComponent("Component.ScreenTransform");
        this.initScale = this.screenTransform.scale;
        this.position = this.screenTransform.anchors.getCenter();
        this.parentScreenTransform = parentScreenTransform;
        this.touchScript = this.root.createComponent("Component.ScriptComponent");
        this.root.createComponent("Component.TouchComponent");
        this.setupInteractions();
    }
    containsScreenPoint(point) {
        return this.screenTransform.containsScreenPoint(point);
    }
    setScale(newScale) {
        this.screenTransform.scale = this.initScale.uniformScale(newScale);
    }
    getSelectedPointsLocalPositions() {
        const res = [];
        this.points.forEach((point, index) => {
            if (point.isSelected) {
                res.push([this.parentScreenTransform.screenPointToLocalPoint(point.screenPosition), index]);
            }
        });
        return res;
    }
    updateSelectedPointsWithLocalPosition(data) {
        data.forEach(([position, index]) => {
            this.points[index].addScreenDelta(this.parentScreenTransform.localPointToScreenPoint(position)
                .sub(this.points[index].screenPosition), true);
            this.points[index].update();
        });
    }
    setupInteractions() {
        const touchStartEvent = this.touchScript.createEvent("TouchStartEvent");
        const touchMoveEvent = this.script.createEvent("TouchMoveEvent");
        const touchEndEvent = this.script.createEvent("TouchEndEvent");
        let selectedPointsLocalPosition = [];
        const handleNewTouch = (newPosition) => {
            this.position = this.screenTransform.anchors.getCenter();
            const delta = newPosition.sub(this.lastTouchPosition);
            if (this.position.x < -this.EPS) {
                this.parentScreenTransform.anchors.left = this.parentScreenTransform.anchors.left + delta.x;
            }
            if (this.position.x > this.EPS) {
                this.parentScreenTransform.anchors.right = this.parentScreenTransform.anchors.right + delta.x;
            }
            if (this.position.y < -this.EPS) {
                this.parentScreenTransform.anchors.bottom = this.parentScreenTransform.anchors.bottom + delta.y;
            }
            if (this.position.y > this.EPS) {
                this.parentScreenTransform.anchors.top = this.parentScreenTransform.anchors.top + delta.y;
            }
            this.updateSelectedPointsWithLocalPosition(selectedPointsLocalPosition);
            this.lastTouchPosition = newPosition;
        };
        const onTouchStart = (eventData) => {
            if (SidePoint.isBusy || SelectedRect_1.SelectedRect.isBusy) {
                return;
            }
            if (SelectionControl_1.SelectionControl.isBusy || LensRegion_1.LensRegion.isBusy) {
                touchMoveEvent.enabled = false;
                touchEndEvent.enabled = false;
                return;
            }
            touchMoveEvent.enabled = true;
            touchEndEvent.enabled = true;
            SelectedRect_1.SelectedRect.isBusy = true;
            SidePoint.isBusy = true;
            selectedPointsLocalPosition = this.getSelectedPointsLocalPositions();
            this.lastTouchPosition = this.parentScreenTransform.screenPointToParentPoint(eventData.getTouchPosition());
        };
        const onTouchMove = (eventData) => {
            handleNewTouch(this.parentScreenTransform.screenPointToParentPoint(eventData.getTouchPosition()));
        };
        const onTouchEnd = (eventData) => {
            handleNewTouch(this.parentScreenTransform.screenPointToParentPoint(eventData.getTouchPosition()));
            SidePoint.isBusy = false;
            SelectedRect_1.SelectedRect.isBusy = false;
            touchMoveEvent.enabled = false;
            touchEndEvent.enabled = false;
        };
        touchStartEvent.bind(onTouchStart);
        touchMoveEvent.bind(onTouchMove);
        touchEndEvent.bind(onTouchEnd);
        touchMoveEvent.enabled = false;
        touchEndEvent.enabled = false;
    }
}
exports.SidePoint = SidePoint;
SidePoint.isBusy = false;
//# sourceMappingURL=SidePoint.js.map