

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import mx.collections.ArrayCollection;
import spark.components.VGroup;
import spark.components.List;
import com.greader.views.searchGroup;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property container (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'container' moved to '_410956671container'
	 */

    [Bindable(event="propertyChange")]
    public function get container():spark.components.VGroup
    {
        return this._410956671container;
    }

    public function set container(value:spark.components.VGroup):void
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
	 * generated bindable wrapper for property empname (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'empname' moved to '_1624023213empname'
	 */

    [Bindable(event="propertyChange")]
    public function get empname():com.greader.views.searchGroup
    {
        return this._1624023213empname;
    }

    public function set empname(value:com.greader.views.searchGroup):void
    {
    	var oldValue:Object = this._1624023213empname;
        if (oldValue !== value)
        {
            this._1624023213empname = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "empname", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property rlist (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'rlist' moved to '_108603408rlist'
	 */

    [Bindable(event="propertyChange")]
    public function get rlist():spark.components.List
    {
        return this._108603408rlist;
    }

    public function set rlist(value:spark.components.List):void
    {
    	var oldValue:Object = this._108603408rlist;
        if (oldValue !== value)
        {
            this._108603408rlist = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "rlist", oldValue, value));
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
