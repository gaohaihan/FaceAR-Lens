"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var SelectionControl_1;
Object.defineProperty(exports, "__esModule", { value: true });
exports.SelectionControl = void 0;
var __selfType = requireType("./SelectionControl");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const SelectedRect_1 = require("./SelectedRect");
const LensRegion_1 = require("../../Common/Utilities/LensRegion/LensRegion");
let SelectionControl = SelectionControl_1 = class SelectionControl extends BaseScriptComponent {
    onAwake() {
    }
    start(newPoints) {
        this.points = newPoints;
        this.selectedRect.start(this.points);
        this.setupTouchEvent();
        this.setupSelectedInteractions();
    }
    isTouchOnPoint(pos) {
        let res = false;
        this.points.forEach((point) => {
            res = res || point.containsScreenPoint(pos);
        });
        return res;
    }
    isInsideOverlay(position) {
        for (let i = 0; i < this.overlayButtons.length; i++) {
            if (this.overlayButtons[i].containsScreenPoint(position)) {
                return true;
            }
        }
        return false;
    }
    setupTouchEvent() {
        const touchStartEvent = this.createEvent("TouchStartEvent");
        const touchMoveEvent = this.createEvent("TouchMoveEvent");
        const touchEndEvent = this.createEvent("TouchEndEvent");
        const onTouchStart = (eventData) => {
            if (LensRegion_1.LensRegion.isBusy) {
                return;
            }
            const touchPosition = eventData.getTouchPosition();
            if (!this.selectedRect.containsScreenPoint(touchPosition)) {
                this.resetSelectedPoints();
            }
            if (this.isTouchOnPoint(touchPosition) || this.selectedRect.containsScreenPoint(touchPosition) ||
                this.isInsideOverlay(touchPosition)) {
                touchMoveEvent.enabled = false;
                touchEndEvent.enabled = false;
                return;
            }
            touchMoveEvent.enabled = true;
            touchEndEvent.enabled = true;
            SelectionControl_1.isBusy = true;
            this.startPoint = this.activeSelection.screenPointToParentPoint(touchPosition);
        };
        const onTouchMove = (eventData) => {
            if (SelectedRect_1.SelectedRect.isBusy || LensRegion_1.LensRegion.isBusy) {
                touchMoveEvent.enabled = false;
                touchEndEvent.enabled = false;
                this.updateActiveSelection(this.startPoint, this.startPoint);
                return;
            }
            this.updateActiveSelection(this.startPoint, this.activeSelection.screenPointToParentPoint(eventData.getTouchPosition()));
            this.updateSelectedPoints();
        };
        const onTouchEnd = () => {
            SelectionControl_1.isBusy = false;
            this.updateSelectedPoints();
            this.updateActiveSelection(this.startPoint, this.startPoint);
        };
        touchStartEvent.bind(onTouchStart);
        touchMoveEvent.bind(onTouchMove);
        touchEndEvent.bind(onTouchEnd);
    }
    resetSelectedPoints() {
        this.points.forEach((point) => {
            point.isSelected = false;
        });
        this.selectedRect.reset();
        this.selectedPoints = [];
    }
    updateSelectedPoints() {
        this.selectedPoints = [];
        this.points.forEach((point) => {
            const position = point.position;
            if (this.aabbMin.x < position.x && position.x < this.aabbMax.x &&
                this.aabbMin.y < position.y && position.y < this.aabbMax.y && point.isEnabled()) {
                point.isSelected = true;
                this.selectedPoints.push(point);
            }
            else {
                point.isSelected = false;
            }
        });
        this.selectedRect.updateSelection(this.selectedPoints);
    }
    updateActiveSelection(pointA, pointB) {
        this.aabbMin.x = Math.min(pointA.x, pointB.x);
        this.aabbMin.y = Math.min(pointA.y, pointB.y);
        this.aabbMax.x = Math.max(pointA.x, pointB.x);
        this.aabbMax.y = Math.max(pointA.y, pointB.y);
        this.activeSelection.anchors.left = this.aabbMin.x;
        this.activeSelection.anchors.right = this.aabbMax.x;
        this.activeSelection.anchors.bottom = this.aabbMin.y;
        this.activeSelection.anchors.top = this.aabbMax.y;
    }
    setupSelectedInteractions() {
    }
    updateSelection() {
        this.selectedRect.updateSelection(this.selectedPoints);
    }
    __initialize() {
        super.__initialize();
        this.startPoint = vec2.zero();
        this.aabbMin = vec2.zero();
        this.aabbMax = vec2.zero();
        this.selectedPoints = [];
    }
};
exports.SelectionControl = SelectionControl;
SelectionControl.isBusy = false;
exports.SelectionControl = SelectionControl = SelectionControl_1 = __decorate([
    component
], SelectionControl);
//# sourceMappingURL=SelectionControl.js.map