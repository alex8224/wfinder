

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import spark.components.HScrollBar;
import spark.components.VScrollBar;
import spark.components.Scroller;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property horizontalScrollBar (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'horizontalScrollBar' moved to '_42694078horizontalScrollBar'
	 */

    [Bindable(event="propertyChange")]
    public function get horizontalScrollBar():spark.components.HScrollBar
    {
        return this._42694078horizontalScrollBar;
    }

    public function set horizontalScrollBar(value:spark.components.HScrollBar):void
    {
    	var oldValue:Object = this._42694078horizontalScrollBar;
        if (oldValue !== value)
        {
            this._42694078horizontalScrollBar = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "horizontalScrollBar", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property verticalScrollBar (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'verticalScrollBar' moved to '_1618627376verticalScrollBar'
	 */

    [Bindable(event="propertyChange")]
    public function get verticalScrollBar():spark.components.VScrollBar
    {
        return this._1618627376verticalScrollBar;
    }

    public function set verticalScrollBar(value:spark.components.VScrollBar):void
    {
    	var oldValue:Object = this._1618627376verticalScrollBar;
        if (oldValue !== value)
        {
            this._1618627376verticalScrollBar = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "verticalScrollBar", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property hostComponent (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'hostComponent' moved to '_213507019hostComponent'
	 */

    [Bindable(event="propertyChange")]
    public function get hostComponent():spark.components.Scroller
    {
        return this._213507019hostComponent;
    }

    public function set hostComponent(value:spark.components.Scroller):void
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
