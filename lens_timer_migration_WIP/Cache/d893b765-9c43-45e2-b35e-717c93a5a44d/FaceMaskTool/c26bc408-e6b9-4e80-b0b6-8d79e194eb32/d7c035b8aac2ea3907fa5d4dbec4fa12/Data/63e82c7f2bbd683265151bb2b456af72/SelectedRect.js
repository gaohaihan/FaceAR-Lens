"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var SelectedRect_1;
Object.defineProperty(exports, "__esModule", { value: true });
exports.SelectedRect = void 0;
var __selfType = requireType("./SelectedRect");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const SelectionControl_1 = require("./SelectionControl");
const SidePoint_1 = require("./SidePoint");
const LensRegion_1 = require("../../Common/Utilities/LensRegion/LensRegion");
let SelectedRect = SelectedRect_1 = class SelectedRect extends BaseScriptComponent {
    onAwake() {
    }
    start(newPoints) {
        this.points = newPoints;
        this.screenTransform = this.root.getComponent("Component.ScreenTransform");
        this.touchScript = this.root.createComponent("Component.ScriptComponent");
        this.setupInteractions();
        this.initSidePoints();
        this.main.addPinchOnUpdateCallback(() => {
            this.updatePointsScale();
        });
    }
    updateSelection(selectedPoints) {
        if (!selectedPoints.length) {
            this.root.enabled = false;
            return;
        }
        this.rect = Rect.create(1, -1, 1, -1);
        selectedPoints.forEach((point) => {
            const position = point.position;
            this.rect.top = Math.max(this.rect.top, position.y + this.boundsOffset);
            this.rect.bottom = Math.min(this.rect.bottom, position.y - this.boundsOffset);
            this.rect.left = Math.min(this.rect.left, position.x - this.boundsOffset);
            this.rect.right = Math.max(this.rect.right, position.x + this.boundsOffset);
        });
        this.screenTransform.anchors = this.rect;
        this.root.enabled = true;
        this.selectedPoints = selectedPoints;
    }
    reset() {
        this.root.enabled = false;
        this.rect = Rect.create(0, 0, 0, 0);
        this.selectedPoints = [];
    }
    containsScreenPoint(point) {
        for (let i = 0; i < this.sidePoints.length; i++) {
            if (this.sidePoints[i].containsScreenPoint(point)) {
                return true;
            }
        }
        return this.screenTransform.containsScreenPoint(point);
    }
    initSidePoints() {
        this.sidePointsObjects.forEach((sidePointSO) => {
            this.sidePoints.push(new SidePoint_1.SidePoint(this, sidePointSO, this.screenTransform, this.points));
        });
    }
    updateSelectedPointsWithDelta(delta) {
        this.selectedPoints.forEach((point) => {
            point.addDelta(delta, true);
        });
    }
    updatePointsScale() {
        let curScale = 1.0 / this.main.getLensRegion().getPinchControl().getScale();
        this.sidePoints.forEach((sidePoint) => {
            sidePoint.setScale(curScale);
        });
    }
    setupInteractions() {
        const touchStartEvent = this.touchScript.createEvent("TouchStartEvent");
        const touchMoveEvent = this.createEvent("TouchMoveEvent");
        const touchEndEvent = this.createEvent("TouchEndEvent");
        const handleNewTouch = (newPosition) => {
            const delta = newPosition.sub(this.lastTouchPosition);
            this.screenTransform.anchors.setCenter(this.screenTransform.anchors.getCenter().add(delta));
            this.updateSelectedPointsWithDelta(delta);
            this.lastTouchPosition = newPosition;
        };
        const onTouchStart = (eventData) => {
            if (SidePoint_1.SidePoint.isBusy || SelectionControl_1.SelectionControl.isBusy || LensRegion_1.LensRegion.isBusy) {
                touchMoveEvent.enabled = false;
                touchEndEvent.enabled = false;
                return;
            }
            touchMoveEvent.enabled = true;
            touchEndEvent.enabled = true;
            SelectedRect_1.isBusy = true;
            this.lastTouchPosition = this.screenTransform.screenPointToParentPoint(eventData.getTouchPosition());
        };
        const onTouchMove = (eventData) => {
            handleNewTouch(this.screenTransform.screenPointToParentPoint(eventData.getTouchPosition()));
        };
        const onTouchEnd = (eventData) => {
            handleNewTouch(this.screenTransform.screenPointToParentPoint(eventData.getTouchPosition()));
            SelectedRect_1.isBusy = false;
            touchMoveEvent.enabled = false;
            touchEndEvent.enabled = false;
        };
        touchStartEvent.bind(onTouchStart);
        touchMoveEvent.bind(onTouchMove);
        touchEndEvent.bind(onTouchEnd);
        touchMoveEvent.enabled = false;
        touchEndEvent.enabled = false;
    }
    __initialize() {
        super.__initialize();
        this.boundsOffset = 0.05;
        this.sidePoints = [];
        this.selectedPoints = [];
        this.rect = Rect.create(0, 0, 0, 0);
    }
};
exports.SelectedRect = SelectedRect;
SelectedRect.isBusy = false;
exports.SelectedRect = SelectedRect = SelectedRect_1 = __decorate([
    component
], SelectedRect);
//# sourceMappingURL=SelectedRect.js.map