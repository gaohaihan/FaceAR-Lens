"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.PointsEditor = void 0;
var __selfType = requireType("./PointsEditor");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const ModeSwitch_1 = require("./ModeSwitch");
const BackgroundType_1 = require("./BackgroundType");
const Point_1 = require("./Base/Point");
const Line_1 = require("./Base/Line");
const LineRenderer_1 = require("./LineRenderer");
const UndoListener_1 = require("./UndoListener");
const Data_1 = require("../Shared/Data");
const FaceMaskWrapper_1 = require("./FaceMaskWrapper");
const SceneUtils_1 = require("./SceneUtils");
let PointsEditor = class PointsEditor extends BaseScriptComponent {
    onAwake() {
        this.undoListener = UndoListener_1.UndoListener.getInstance(this);
        this.root = this.pointReference.getParent();
        if (FaceMaskWrapper_1.FaceMaskWrapper.getInstance()) {
            this.init();
            this.undoListener.setLocalFaceMask(this.localFaceMask);
            this.undoListener.setOnUndo(() => {
                this.updateLocalPoints();
            });
            this.main.addPinchOnUpdateCallback(() => {
                this.updatePointsScale();
            });
            this.main.getLensRegion().addOnLensRegionUpdate(() => {
                this.lineRenderer.update();
            });
            this.lateUpdateEvent = this.createEvent("LateUpdateEvent");
            this.lateUpdateEvent.bind(() => {
                this.onUpdate();
            });
            this.onUpdate();
            this.selectionControl.start(this.points);
            this.background.addOnAspectRationChangeCallback((regionAspectRatio) => {
                this.onAspectRatioChange(regionAspectRatio);
            });
        }
    }
    setCoords(coords) {
        this.points.forEach((point, idx) => {
            point.position = this.convertLandmarkToPoint(coords[idx * 2], coords[idx * 2 + 1]);
        });
        this.lineRenderer.update();
    }
    reset() {
        const coords = (ModeSwitch_1.ModeSwitch.ActiveMode === BackgroundType_1.BackgroundType.Texture ?
            Data_1.Constants.MainTextureCoords : Data_1.Constants.MaskCoords);
        this.points.forEach((point, idx) => {
            point.position = this.convertLandmarkToPoint(coords[idx][0], coords[idx][1]);
        });
        this.onUpdate();
    }
    updateLocalPoints() {
        var _a;
        if (!((_a = FaceMaskWrapper_1.FaceMaskWrapper.getInstance()) === null || _a === void 0 ? void 0 : _a.isValid)) {
            this.hidePointsAndLines();
            return;
        }
        if (!this.points.length) {
            this.onAwake();
        }
        this.showPointsAndLines();
        if (ModeSwitch_1.ModeSwitch.ActiveMode === BackgroundType_1.BackgroundType.Texture) {
            this.setCoords(FaceMaskWrapper_1.FaceMaskWrapper.getInstance().textureCoords);
        }
        else {
            this.setCoords(FaceMaskWrapper_1.FaceMaskWrapper.getInstance().maskCoords);
        }
        this.selectionControl.updateSelection();
        this.lateUpdateEvent.enabled = true;
    }
    init() {
        this.drawPoints();
        this.drawLines();
    }
    drawPoints() {
        const points = FaceMaskWrapper_1.FaceMaskWrapper.getInstance().textureCoords;
        for (let i = 0; i < points.length; i += 2) {
            const newPoint = new Point_1.Point(this.root.copyWholeHierarchyAndAssets(this.pointReference), i / 2, () => {
                this.lateUpdateEvent.enabled = true;
            });
            newPoint.position = this.convertLandmarkToPoint(points[i], points[i + 1]);
            newPoint.setActive(true);
            this.points.push(newPoint);
        }
        this.setSymmetricalPoints();
    }
    drawLines() {
        const linesCount = Data_1.Constants.TriangulationWithMouth.length;
        for (let i = 0; i < linesCount; i++) {
            for (let j = 0; j < 3; j++) {
                const newLine = new Line_1.Line();
                newLine.pointA = this.points[Data_1.Constants.TriangulationWithMouth[i][j] - 1];
                newLine.pointB = this.points[Data_1.Constants.TriangulationWithMouth[i][(j + 1) % 3] - 1];
                this.lines.push(newLine);
                this.lineRenderer.addLine(newLine);
            }
        }
        SceneUtils_1.SceneUtils.execOnNextFrame(() => {
            this.lineRenderer.update();
        }, this);
    }
    setSymmetricalPoints() {
        Data_1.Constants.SymmetricPairs.forEach(([a, b]) => {
            this.points[a].setSymmetricalPoint(this.points[b]);
            this.points[b].setSymmetricalPoint(this.points[a]);
        });
    }
    hidePointsAndLines() {
        this.points.forEach(point => point.hide());
        this.lineRenderer.hide();
    }
    showPointsAndLines() {
        this.points.forEach(point => point.show());
        this.lineRenderer.show();
    }
    onUpdate() {
        if (!FaceMaskWrapper_1.FaceMaskWrapper.getInstance()) {
            this.hidePointsAndLines();
            return;
        }
        this.showPointsAndLines();
        this.updateFaceMask();
        this.lineRenderer.update();
        // global.LensEditor?.context.onEditableUpdated();
        this.lateUpdateEvent.enabled = false;
    }
    updateFaceMask() {
        var _a;
        if (!((_a = FaceMaskWrapper_1.FaceMaskWrapper.getInstance()) === null || _a === void 0 ? void 0 : _a.isValid)) {
            return;
        }
        this.faceMaskPoints = [];
        this.points.forEach((point) => {
            this.faceMaskPoints = [...this.faceMaskPoints, ...this.convertPointToLandmark(point.position)];
        });
        if (ModeSwitch_1.ModeSwitch.ActiveMode === BackgroundType_1.BackgroundType.Texture) {
            FaceMaskWrapper_1.FaceMaskWrapper.getInstance().textureCoords = this.faceMaskPoints;
            this.localFaceMask.textureCoords = this.faceMaskPoints;
        }
        else {
            FaceMaskWrapper_1.FaceMaskWrapper.getInstance().maskCoords = this.faceMaskPoints;
            this.localFaceMask.maskCoords = this.faceMaskPoints;
        }
    }
    updatePointsScale() {
        let curScale = 1.0 / this.main.getLensRegion().getPinchControl().getScale();
        this.points.forEach((point) => {
            point.setScale(curScale);
        });
        // ScreenTransforms only get updated on the next frame
        // so if we update lineRenderer right away it will use old values
        SceneUtils_1.SceneUtils.execOnNextFrame(() => {
            this.lineRenderer.update();
        }, this);
    }
    processDetectedPoints(points) {
        if (ModeSwitch_1.ModeSwitch.ActiveMode !== BackgroundType_1.BackgroundType.Texture) {
            return;
        }
        this.setCoords(points);
        this.lateUpdateEvent.enabled = true;
    }
    onAspectRatioChange(regionAspectRatio) {
        this.pointsRegion.anchors.setSize(regionAspectRatio.uniformScale(2));
        this.lineRenderer.update();
    }
    convertLandmarkToPoint(x, y) {
        return new vec2((x - 0.5) * 2, -(y - 0.5) * 2);
    }
    convertPointToLandmark(pos) {
        return [(pos.x + 1) / 2, -(pos.y - 1) / 2];
    }
    __initialize() {
        super.__initialize();
        this.points = [];
        this.lines = [];
        this.lineRenderer = LineRenderer_1.LineRenderer.getInstance();
        this.faceMaskPoints = [];
    }
};
exports.PointsEditor = PointsEditor;
exports.PointsEditor = PointsEditor = __decorate([
    component
], PointsEditor);
//# sourceMappingURL=PointsEditor.js.map