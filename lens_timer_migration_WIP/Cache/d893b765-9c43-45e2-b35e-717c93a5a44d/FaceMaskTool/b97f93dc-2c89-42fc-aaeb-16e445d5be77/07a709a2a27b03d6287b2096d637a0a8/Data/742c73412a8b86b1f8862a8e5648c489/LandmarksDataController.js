"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.LandmarksDataController = void 0;
var __selfType = requireType("./LandmarksDataController");
function component(target) { target.getTypeName = function () { return __selfType; }; }
const BackgroundType_1 = require("./BackgroundType");
let LandmarksDataController = class LandmarksDataController extends BaseScriptComponent {
    onAwake() {
        this.head.enabled = false;
        this.head.onLandmarksUpdate.add((landmarks) => {
            if (landmarks.length < 75) {
                this.head.enabled = false;
                return;
            }
            const points = [];
            for (let i = 0; i < 75; i++) {
                points.push(landmarks[i].x);
                points.push(landmarks[i].y);
            }
            this.pointsEditor.processDetectedPoints(points);
            this.head.enabled = false;
        });
    }
    detectFace() {
        const backgroundData = this.background.getTexture();
        if (backgroundData.type !== BackgroundType_1.BackgroundType.Texture && backgroundData.texture) {
            return;
        }
        const trackingScope = this.head.trackingScope;
        trackingScope.texture = backgroundData.texture;
        this.head.enabled = true;
    }
};
exports.LandmarksDataController = LandmarksDataController;
exports.LandmarksDataController = LandmarksDataController = __decorate([
    component
], LandmarksDataController);
//# sourceMappingURL=LandmarksDataController.js.map