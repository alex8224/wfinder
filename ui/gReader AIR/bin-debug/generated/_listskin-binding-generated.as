

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import spark.primitives.Rect;
import mx.core.ClassFactory;
import mx.graphics.SolidColorStroke;
import spark.components.DataGroup;
import mx.graphics.SolidColor;
import spark.components.Scroller;
import spark.components.List;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property background (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'background' moved to '_1332194002background'
	 */

    [Bindable(event="propertyChange")]
    public function get background():spark.primitives.Rect
    {
        return this._1332194002background;
    }

    public function set background(value:spark.primitives.Rect):void
    {
    	var oldValue:Object = this._1332194002background;
        if (oldValue !== value)
        {
            this._1332194002background = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "background", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property bgFill (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'bgFill' moved to '_1391998104bgFill'
	 */

    [Bindable(event="propertyChange")]
    public function get bgFill():mx.graphics.SolidColor
    {
        return this._1391998104bgFill;
    }

    public function set bgFill(value:mx.graphics.SolidColor):void
    {
    	var oldValue:Object = this._1391998104bgFill;
        if (oldValue !== value)
        {
            this._1391998104bgFill = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bgFill", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property border (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'border' moved to '_1383304148border'
	 */

    [Bindable(event="propertyChange")]
    public function get border():spark.primitives.Rect
    {
        return this._1383304148border;
    }

    public function set border(value:spark.primitives.Rect):void
    {
    	var oldValue:Object = this._1383304148border;
        if (oldValue !== value)
        {
            this._1383304148border = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "border", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property borderStroke (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'borderStroke' moved to '_1395787140borderStroke'
	 */

    [Bindable(event="propertyChange")]
    public function get borderStroke():mx.graphics.SolidColorStroke
    {
        return this._1395787140borderStroke;
    }

    public function set borderStroke(value:mx.graphics.SolidColorStroke):void
    {
    	var oldValue:Object = this._1395787140borderStroke;
        if (oldValue !== value)
        {
            this._1395787140borderStroke = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "borderStroke", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property dataGroup (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'dataGroup' moved to '_385593099dataGroup'
	 */

    [Bindable(event="propertyChange")]
    public function get dataGroup():spark.components.DataGroup
    {
        return this._385593099dataGroup;
    }

    public function set dataGroup(value:spark.components.DataGroup):void
    {
    	var oldValue:Object = this._385593099dataGroup;
        if (oldValue !== value)
        {
            this._385593099dataGroup = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dataGroup", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property dropIndicator (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'dropIndicator' moved to '_1419185120dropIndicator'
	 */

    [Bindable(event="propertyChange")]
    public function get dropIndicator():mx.core.ClassFactory
    {
        return this._1419185120dropIndicator;
    }

    public function set dropIndicator(value:mx.core.ClassFactory):void
    {
    	var oldValue:Object = this._1419185120dropIndicator;
        if (oldValue !== value)
        {
            this._1419185120dropIndicator = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dropIndicator", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property scroller (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'scroller' moved to '_402164678scroller'
	 */

    [Bindable(event="propertyChange")]
    public function get scroller():spark.components.Scroller
    {
        return this._402164678scroller;
    }

    public function set scroller(value:spark.components.Scroller):void
    {
    	var oldValue:Object = this._402164678scroller;
        if (oldValue !== value)
        {
            this._402164678scroller = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "scroller", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property hostComponent (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'hostComponent' moved to '_213507019hostComponent'
	 */

    [Bindable(event="propertyChange")]
    public function get hostComponent():spark.components.List
    {
        return this._213507019hostComponent;
    }

    public function set hostComponent(value:spark.components.List):void
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
