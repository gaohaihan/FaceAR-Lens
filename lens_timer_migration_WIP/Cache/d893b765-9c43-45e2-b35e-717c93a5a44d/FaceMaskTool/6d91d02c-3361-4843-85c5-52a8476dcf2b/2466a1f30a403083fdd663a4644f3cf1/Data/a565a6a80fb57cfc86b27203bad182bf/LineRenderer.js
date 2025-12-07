"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var LineRenderer_1;
Object.defineProperty(exports, "__esModule", { value: true });
exports.LineRenderer = void 0;
var __selfType = requireType("./LineRenderer");
function component(target) { target.getTypeName = function () { return __selfType; }; }
let LineRenderer = LineRenderer_1 = class LineRenderer extends BaseScriptComponent {
    static getInstance() {
        return this.instance;
    }
    onAwake() {
        LineRenderer_1.instance = this;
        const startTexture = ProceduralTextureProvider.create(this.DIMENTION, this.DIMENTION, Colorspace.RGBAFloat);
        this.startPointTexProvider = startTexture.control;
        this.startPointTexData = new Float32Array(this.DIMENTION * this.DIMENTION * this.CHANNELS);
        this.startPoint.control = this.startPointTexProvider;
        const endTexture = ProceduralTextureProvider.create(this.DIMENTION, this.DIMENTION, Colorspace.RGBAFloat);
        this.endPointTexProvider = endTexture.control;
        this.endPointTexData = new Float32Array(this.DIMENTION * this.DIMENTION * this.CHANNELS);
        this.endPoint.control = this.endPointTexProvider;
        this.linesMat.mainPass.instanceCount = this.DIMENTION * this.DIMENTION;
        this.color = this.linesMat.mainPass.baseColor;
    }
    hide() {
        this.linesMat.mainPass.baseColor = vec4.zero();
    }
    show() {
        this.linesMat.mainPass.baseColor = this.color;
    }
    addLine(line) {
        this.lines.push(line);
    }
    update() {
        this.lines.forEach((line, idx) => {
            this.addStartEndPoints(idx, line.pointA, line.pointB);
        });
        this.startPointTexProvider.setPixelsFloat32(0, 0, this.DIMENTION, this.DIMENTION, this.startPointTexData);
        this.endPointTexProvider.setPixelsFloat32(0, 0, this.DIMENTION, this.DIMENTION, this.endPointTexData);
    }
    addStartEndPoints(index, start, end) {
        this.addVectorAt(this.startPointTexData, index, start.worldPosition);
        this.addVectorAt(this.endPointTexData, index, end.worldPosition);
    }
    addVectorAt(data, index, position) {
        data[4 * index] = position.x;
        data[4 * index + 1] = position.y;
        data[4 * index + 2] = position.z;
        data[4 * index + 3] = 0;
    }
    __initialize() {
        super.__initialize();
        this.DIMENTION = 100;
        this.CHANNELS = 4;
        this.color = vec4.zero();
        this.lines = [];
    }
};
exports.LineRenderer = LineRenderer;
exports.LineRenderer = LineRenderer = LineRenderer_1 = __decorate([
    component
], LineRenderer);
//# sourceMappingURL=LineRenderer.js.map