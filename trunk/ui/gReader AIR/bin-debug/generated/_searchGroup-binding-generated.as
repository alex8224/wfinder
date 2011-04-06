

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import spark.primitives.Rect;
import spark.components.TextInput;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property container (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'container' moved to '_410956671container'
	 */

    [Bindable(event="propertyChange")]
    public function get container():spark.components.TextInput
    {
        return this._410956671container;
    }

    public function set container(value:spark.components.TextInput):void
    {
    	var oldValue:Object = this._410956671container;
        if (oldValue !== value)
        {
            this._410956671container = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "container", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property titleLight (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'titleLight' moved to '_1791239778titleLight'
	 */

    [Bindable(event="propertyChange")]
    public function get titleLight():spark.primitives.Rect
    {
        return this._1791239778titleLight;
    }

    public function set titleLight(value:spark.primitives.Rect):void
    {
    	var oldValue:Object = this._1791239778titleLight;
        if (oldValue !== value)
        {
            this._1791239778titleLight = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "titleLight", oldValue, value));
        }
    }



}
