

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import spark.primitives.Rect;
import mx.graphics.SolidColor;
import spark.components.Button;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property _BtnSkin_SolidColor1 (public)
	 * - generated setter
	 * - generated getter
	 * - original public var '_BtnSkin_SolidColor1' moved to '_552608908_BtnSkin_SolidColor1'
	 */

    [Bindable(event="propertyChange")]
    public function get _BtnSkin_SolidColor1():mx.graphics.SolidColor
    {
        return this._552608908_BtnSkin_SolidColor1;
    }

    public function set _BtnSkin_SolidColor1(value:mx.graphics.SolidColor):void
    {
    	var oldValue:Object = this._552608908_BtnSkin_SolidColor1;
        if (oldValue !== value)
        {
            this._552608908_BtnSkin_SolidColor1 = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_BtnSkin_SolidColor1", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property btn (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'btn' moved to '_97884btn'
	 */

    [Bindable(event="propertyChange")]
    public function get btn():spark.primitives.Rect
    {
        return this._97884btn;
    }

    public function set btn(value:spark.primitives.Rect):void
    {
    	var oldValue:Object = this._97884btn;
        if (oldValue !== value)
        {
            this._97884btn = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "btn", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property hostComponent (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'hostComponent' moved to '_213507019hostComponent'
	 */

    [Bindable(event="propertyChange")]
    public function get hostComponent():spark.components.Button
    {
        return this._213507019hostComponent;
    }

    public function set hostComponent(value:spark.components.Button):void
    {
    	var oldValue:Object = this._213507019hostComponent;
        if (oldValue !== value)
        {
            this._213507019hostComponent = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hostComponent", oldValue, value));
        }
    }



}
