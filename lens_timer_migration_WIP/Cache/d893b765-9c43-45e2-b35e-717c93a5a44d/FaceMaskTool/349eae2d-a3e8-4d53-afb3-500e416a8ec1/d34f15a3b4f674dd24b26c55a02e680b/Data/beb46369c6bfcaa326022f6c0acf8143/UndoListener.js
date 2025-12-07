"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.UndoListener = void 0;
const ModeSwitch_1 = require("./ModeSwitch");
const BackgroundType_1 = require("./BackgroundType");
const FaceMaskWrapper_1 = require("./FaceMaskWrapper");
class UndoListener {
    static getInstance(newScript) {
        if (!this.instance) {
            this.instance = new UndoListener(newScript);
        }
        return this.instance;
    }
    constructor(script) {
        this.proxyFM = FaceMaskWrapper_1.FaceMaskWrapper.getInstance();
        this.wasValidOnLastFrame = false;
        this.onUndo = null;
        this.eps = 0.00001;
        script.createEvent("UpdateEvent").bind(() => {
            if (this.checkForUndo()) {
                this.wasValidOnLastFrame = this.proxyFM.isValid;
                this.onUndo && this.onUndo();
            }
        });
    }
    setLocalFaceMask(localFM) {
        this.localFM = localFM;
    }
    setOnUndo(cb) {
        this.onUndo = cb;
    }
    checkForUndo() {
        var _a, _b, _c;
        if (!this.proxyFM) {
            this.proxyFM = FaceMaskWrapper_1.FaceMaskWrapper.getInstance();
        }
        if (!((_a = this.proxyFM) === null || _a === void 0 ? void 0 : _a.isValid)) {
            return this.wasValidOnLastFrame;
        }
        if (((_b = this.proxyFM) === null || _b === void 0 ? void 0 : _b.isValid) !== this.wasValidOnLastFrame) {
            return true;
        }
        if (!((_c = this.proxyFM) === null || _c === void 0 ? void 0 : _c.isValid)) {
            return false;
        }
        const proxyArray = (ModeSwitch_1.ModeSwitch.ActiveMode === BackgroundType_1.BackgroundType.Texture ? this.proxyFM.textureCoords : this.proxyFM.maskCoords);
        const localArray = (ModeSwitch_1.ModeSwitch.ActiveMode === BackgroundType_1.BackgroundType.Texture ? this.localFM.textureCoords : this.localFM.maskCoords);
        if (proxyArray.length !== localArray.length) {
            return true;
        }
        for (let i = 0; i < proxyArray.length; i++) {
            if (Math.abs(proxyArray[i] - localArray[i]) > this.eps) {
                return true;
            }
        }
        return false;
    }
}
exports.UndoListener = UndoListener;
UndoListener.isBusy = false;
//# sourceMappingURL=UndoListener.js.map