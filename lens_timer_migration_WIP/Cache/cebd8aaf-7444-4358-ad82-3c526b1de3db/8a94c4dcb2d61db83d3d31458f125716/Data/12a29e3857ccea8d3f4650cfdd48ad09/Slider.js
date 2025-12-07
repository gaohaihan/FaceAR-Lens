"use strict";
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var Slider_1;
Object.defineProperty(exports, "__esModule", { value: true });
exports.Slider = void 0;
var __selfType = requireType("./Slider");
function component(target) { target.getTypeName = function () { return __selfType; }; }
/**
 * Slider
 * Version 0.0.10
 *
 * Slider UI element with counter option.
 *
 * API:
 *
 * enableInteractable(): void
 * disableInteractable(): void
 * getCounterValue(): number
 * enableCounter(): void
 * disableCounter(): void
 * sliderValue: number
 * counterTextSize: number
 * trackBarColor: vec3
 * sliderOpacity: number
 *
 * Events:
 *
 * onValueChanged - triggers with passed slider value in the range [this.startValue, this.endValue].
 * onTouchStart - triggers with passed TouchStartEventArgs data.
 * onTouchMove - triggers with passed TouchMoveEventArgs data.
 * onTouchEnd - triggers with passed TouchEndEventArgs data.
 * onEnabledInteractable
 * onDisabledInteractable
 */
const BaseSlider_1 = require("./BaseSlider");
const EventCallbacks_1 = require("./Modules/BehaviorSupport/EventCallbacks");
let Slider = Slider_1 = class Slider extends BaseSlider_1.BaseSlider {
    onAwake() {
        this.initialize();
    }
    set counterTextSize(textSize) {
        this.counterData.text.size = textSize;
    }
    get counterTextSize() {
        return this.counterData.text.size;
    }
    set trackBarColor(value) {
        this.backgroundData.pass.foreground_color = value;
    }
    get trackBarColor() {
        return this.backgroundData.pass.foreground_color;
    }
    set sliderOpacity(value) {
        this.backgroundData.pass.background_alpha = value;
    }
    get sliderOpacity() {
        return this.backgroundData.pass.background_alpha;
    }
    getCounterValue() {
        return +this.counterData.text.text;
    }
    enableCounter() {
        this.counterEnabled = true;
        this.counterData.so.enabled = true;
        this.updateCounter(this._sliderValue);
    }
    disableCounter() {
        this.counterEnabled = false;
        this.counterData.so.enabled = false;
    }
    /**
     * Initializes all slider's components.
     * @protected
     */
    initialize() {
        super.initialize();
        this.initializeCounter();
        this.initializeOrientation();
        this.initializeEventCallbacks();
        this.updateTrackBar(-1.0);
        this.sliderValue = this.startSliderValue;
        this.backgroundData.pass.foreground_color = this._trackBarColor;
    }
    initializeCounter() {
        this.counterData.so = this.sliderData.counterSO;
        if (!this.counterData.so) {
            throw new Error("Invalid Counter.");
        }
        this.counterData.st = this.counterData.so.getComponent('ScreenTransform');
        if (!this.counterData.st) {
            throw new Error("Invalid Counter Screen Transform.");
        }
        this.counterData.text = this.counterData.so.getComponent('Text');
        if (!this.counterData.text) {
            throw new Error("Invalid Counter Text.");
        }
        this.counterData.so.enabled = this.counterEnabled;
    }
    /**
     * Expands 'initializeOrientation' method and changes the position of the counter depending on the orientation.
     * @protected
     */
    initializeOrientation() {
        super.initializeOrientation();
        switch (this.orientation) {
            case BaseSlider_1.Orientation.Vertical:
                this.counterData.st.anchors.setCenter(new vec2(Slider_1.COUNTER_ANCHOR_OFFSET_VERTICAL, 0.0));
                this.counterData.st.offsets.setCenter(new vec2(Slider_1.COUNTER_OFFSET, 0.0));
                this.counterData.text.horizontalAlignment = HorizontalAlignment.Left;
                break;
            case BaseSlider_1.Orientation.Horizontal:
                this.counterData.st.anchors.setCenter(new vec2(0.0, Slider_1.COUNTER_ANCHOR_OFFSET_HORIZONTAL));
                this.counterData.st.offsets.setCenter(new vec2(0.0, Slider_1.COUNTER_OFFSET));
                this.counterData.text.horizontalAlignment = HorizontalAlignment.Center;
                break;
        }
    }
    /**
     * Adds listeners to `onValueChanged` event.
     * @private
     */
    initializeEventCallbacks() {
        if (this.eventCallbacks && this.callbackType !== EventCallbacks_1.CallbackType.None) {
            this.onValueChanged.add(EventCallbacks_1.EventCallbacks.invokeCallbackFromInputs({
                name: "onValueChanged",
                type: this.callbackType,
                behaviorScripts: this.onValueChangedBehaviors,
                behaviorSystemTriggers: this.onValueChangedCustomTriggers,
                scriptFunctions: this.onValueChangedFunctions
            }));
        }
    }
    /**
     * Sets a new slider value. Value should be in the range [-1.0, 1.0].
     * @param value - a new slider value.
     */
    _setSliderValue(value) {
        super._setSliderValue(value);
        if (this.counterEnabled) {
            this.updateCounter(this._sliderValue);
        }
        if (this.trackBar) {
            this.updateTrackBar(this._sliderValue);
        }
    }
    /**
     * Updates the counter value according to the slider value.
     * @param sliderValue - current slider's value in the range [-1.0, 1.0].
     * @private
     */
    updateCounter(sliderValue) {
        this.counterData.text.text = MathUtils.remap(sliderValue, -1.0, 1.0, this.startValue, this.endValue).toFixed(this.fractionDigits);
    }
    /**
     * Updates the trackBar value according to the slider value.
     * @param sliderValue - current slider's value in the range [-1.0, 1.0].
     * @private
     */
    updateTrackBar(sliderValue) {
        this.backgroundData.pass.slider_value = (sliderValue + 1) / 2;
    }
    __initialize() {
        super.__initialize();
        this.counterData = {
            so: null,
            st: null,
            text: null
        };
    }
};
Slider.COUNTER_OFFSET = 0.125;
Slider.COUNTER_ANCHOR_OFFSET_VERTICAL = 1.5;
Slider.COUNTER_ANCHOR_OFFSET_HORIZONTAL = 0.5;
Slider = Slider_1 = __decorate([
    component
], Slider);
exports.Slider = Slider;
