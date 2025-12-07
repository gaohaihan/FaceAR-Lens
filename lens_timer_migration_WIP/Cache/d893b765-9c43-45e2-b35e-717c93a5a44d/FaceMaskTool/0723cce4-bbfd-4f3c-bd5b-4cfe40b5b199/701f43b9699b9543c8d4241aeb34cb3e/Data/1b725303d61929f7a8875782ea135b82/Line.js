"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Line = void 0;
class Line {
    constructor() {
    }
    set pointA(point) {
        this._pointA = point;
    }
    get pointA() {
        return this._pointA;
    }
    set pointB(point) {
        this._pointB = point;
    }
    get pointB() {
        return this._pointB;
    }
    update() {
        this.pointA = this._pointA;
        this.pointB = this._pointB;
    }
}
exports.Line = Line;
//# sourceMappingURL=Line.js.map