

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.effects.Zoom;
import mx.collections.ArrayCollection;
import spark.components.List;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property hideEffect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'hideEffect' moved to '_63043213hideEffect'
	 */

    [Bindable(event="propertyChange")]
    public function get hideEffect():mx.effects.Zoom
    {
        return this._63043213hideEffect;
    }

    public function set hideEffect(value:mx.effects.Zoom):void
    {
    	var oldValue:Object = this._63043213hideEffect;
        if (oldValue !== value)
        {
            this._63043213hideEffect = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "hideEffect", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property showEfft (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'showEfft' moved to '_339280436showEfft'
	 */

    [Bindable(event="propertyChange")]
    public function get showEfft():mx.effects.Zoom
    {
        return this._339280436showEfft;
    }

    public function set showEfft(value:mx.effects.Zoom):void
    {
    	var oldValue:Object = this._339280436showEfft;
        if (oldValue !== value)
        {
            this._339280436showEfft = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "showEfft", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property toplist (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'toplist' moved to '_1139163277toplist'
	 */

    [Bindable(event="propertyChange")]
    public function get toplist():spark.components.List
    {
        return this._1139163277toplist;
    }

    public function set toplist(value:spark.components.List):void
    {
    	var oldValue:Object = this._1139163277toplist;
        if (oldValue !== value)
        {
            this._1139163277toplist = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "toplist", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property resultSet (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'resultSet' moved to '_1819563259resultSet'
	 */

    [Bindable(event="propertyChange")]
    public function get resultSet():ArrayCollection
    {
        return this._1819563259resultSet;
    }

    public function set resultSet(value:ArrayCollection):void
    {
    	var oldValue:Object = this._1819563259resultSet;
        if (oldValue !== value)
        {
            this._1819563259resultSet = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "resultSet", oldValue, value));
        }
    }



}
