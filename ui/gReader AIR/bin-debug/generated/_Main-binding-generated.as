

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import spark.effects.Fade;
import mx.graphics.SolidColor;
import com.greader.views.sqlUI;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property backgroundFill (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'backgroundFill' moved to '_1427077073backgroundFill'
	 */

    [Bindable(event="propertyChange")]
    public function get backgroundFill():mx.graphics.SolidColor
    {
        return this._1427077073backgroundFill;
    }

    public function set backgroundFill(value:mx.graphics.SolidColor):void
    {
    	var oldValue:Object = this._1427077073backgroundFill;
        if (oldValue !== value)
        {
            this._1427077073backgroundFill = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "backgroundFill", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property fadeEffect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'fadeEffect' moved to '_1904717613fadeEffect'
	 */

    [Bindable(event="propertyChange")]
    public function get fadeEffect():spark.effects.Fade
    {
        return this._1904717613fadeEffect;
    }

    public function set fadeEffect(value:spark.effects.Fade):void
    {
    	var oldValue:Object = this._1904717613fadeEffect;
        if (oldValue !== value)
        {
            this._1904717613fadeEffect = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "fadeEffect", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property sqlgrid (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'sqlgrid' moved to '_1973243372sqlgrid'
	 */

    [Bindable(event="propertyChange")]
    public function get sqlgrid():com.greader.views.sqlUI
    {
        return this._1973243372sqlgrid;
    }

    public function set sqlgrid(value:com.greader.views.sqlUI):void
    {
    	var oldValue:Object = this._1973243372sqlgrid;
        if (oldValue !== value)
        {
            this._1973243372sqlgrid = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sqlgrid", oldValue, value));
        }
    }



}
