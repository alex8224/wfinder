

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import spark.components.WindowedApplication;
import spark.primitives.Rect;
import spark.components.Label;
import spark.components.Group;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property _appSkin_Group1 (public)
	 * - generated setter
	 * - generated getter
	 * - original public var '_appSkin_Group1' moved to '_1723935758_appSkin_Group1'
	 */

    [Bindable(event="propertyChange")]
    public function get _appSkin_Group1():spark.components.Group
    {
        return this._1723935758_appSkin_Group1;
    }

    public function set _appSkin_Group1(value:spark.components.Group):void
    {
    	var oldValue:Object = this._1723935758_appSkin_Group1;
        if (oldValue !== value)
        {
            this._1723935758_appSkin_Group1 = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_appSkin_Group1", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property backgroundRect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'backgroundRect' moved to '_1427430450backgroundRect'
	 */

    [Bindable(event="propertyChange")]
    public function get backgroundRect():spark.primitives.Rect
    {
        return this._1427430450backgroundRect;
    }

    public function set backgroundRect(value:spark.primitives.Rect):void
    {
    	var oldValue:Object = this._1427430450backgroundRect;
        if (oldValue !== value)
        {
            this._1427430450backgroundRect = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "backgroundRect", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property contentGroup (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'contentGroup' moved to '_809612678contentGroup'
	 */

    [Bindable(event="propertyChange")]
    public function get contentGroup():spark.components.Group
    {
        return this._809612678contentGroup;
    }

    public function set contentGroup(value:spark.components.Group):void
    {
    	var oldValue:Object = this._809612678contentGroup;
        if (oldValue !== value)
        {
            this._809612678contentGroup = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "contentGroup", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property statusBar (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'statusBar' moved to '_2070227263statusBar'
	 */

    [Bindable(event="propertyChange")]
    public function get statusBar():spark.components.Group
    {
        return this._2070227263statusBar;
    }

    public function set statusBar(value:spark.components.Group):void
    {
    	var oldValue:Object = this._2070227263statusBar;
        if (oldValue !== value)
        {
            this._2070227263statusBar = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "statusBar", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property statusText (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'statusText' moved to '_248004671statusText'
	 */

    [Bindable(event="propertyChange")]
    public function get statusText():spark.components.Label
    {
        return this._248004671statusText;
    }

    public function set statusText(value:spark.components.Label):void
    {
    	var oldValue:Object = this._248004671statusText;
        if (oldValue !== value)
        {
            this._248004671statusText = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "statusText", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property hostComponent (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'hostComponent' moved to '_213507019hostComponent'
	 */

    [Bindable(event="propertyChange")]
    public function get hostComponent():spark.components.WindowedApplication
    {
        return this._213507019hostComponent;
    }

    public function set hostComponent(value:spark.components.WindowedApplication):void
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
