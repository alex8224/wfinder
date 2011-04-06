

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import spark.primitives.Path;
import spark.components.Button;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property arrow (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'arrow' moved to '_93090825arrow'
	 */

    [Bindable(event="propertyChange")]
    public function get arrow():spark.primitives.Path
    {
        return this._93090825arrow;
    }

    public function set arrow(value:spark.primitives.Path):void
    {
    	var oldValue:Object = this._93090825arrow;
        if (oldValue !== value)
        {
            this._93090825arrow = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "arrow", oldValue, value));
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
