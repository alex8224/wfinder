

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import spark.components.VScrollBar;
import spark.components.Button;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property decrementButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'decrementButton' moved to '_853009829decrementButton'
	 */

    [Bindable(event="propertyChange")]
    public function get decrementButton():spark.components.Button
    {
        return this._853009829decrementButton;
    }

    public function set decrementButton(value:spark.components.Button):void
    {
    	var oldValue:Object = this._853009829decrementButton;
        if (oldValue !== value)
        {
            this._853009829decrementButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "decrementButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property incrementButton (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'incrementButton' moved to '_454226047incrementButton'
	 */

    [Bindable(event="propertyChange")]
    public function get incrementButton():spark.components.Button
    {
        return this._454226047incrementButton;
    }

    public function set incrementButton(value:spark.components.Button):void
    {
    	var oldValue:Object = this._454226047incrementButton;
        if (oldValue !== value)
        {
            this._454226047incrementButton = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "incrementButton", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property thumb (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'thumb' moved to '_110342614thumb'
	 */

    [Bindable(event="propertyChange")]
    public function get thumb():spark.components.Button
    {
        return this._110342614thumb;
    }

    public function set thumb(value:spark.components.Button):void
    {
    	var oldValue:Object = this._110342614thumb;
        if (oldValue !== value)
        {
            this._110342614thumb = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "thumb", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property track (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'track' moved to '_110621003track'
	 */

    [Bindable(event="propertyChange")]
    public function get track():spark.components.Button
    {
        return this._110621003track;
    }

    public function set track(value:spark.components.Button):void
    {
    	var oldValue:Object = this._110621003track;
        if (oldValue !== value)
        {
            this._110621003track = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "track", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property hostComponent (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'hostComponent' moved to '_213507019hostComponent'
	 */

    [Bindable(event="propertyChange")]
    public function get hostComponent():spark.components.VScrollBar
    {
        return this._213507019hostComponent;
    }

    public function set hostComponent(value:spark.components.VScrollBar):void
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
