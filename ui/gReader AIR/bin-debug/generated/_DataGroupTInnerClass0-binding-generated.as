

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import spark.components.Label;
import mx.graphics.SolidColor;
import spark.components.Group;
import com.greader.views.DataGroupT;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property _DataGroupTInnerClass0_SolidColor2 (public)
	 * - generated setter
	 * - generated getter
	 * - original public var '_DataGroupTInnerClass0_SolidColor2' moved to '_1974960405_DataGroupTInnerClass0_SolidColor2'
	 */

    [Bindable(event="propertyChange")]
    public function get _DataGroupTInnerClass0_SolidColor2():mx.graphics.SolidColor
    {
        return this._1974960405_DataGroupTInnerClass0_SolidColor2;
    }

    public function set _DataGroupTInnerClass0_SolidColor2(value:mx.graphics.SolidColor):void
    {
    	var oldValue:Object = this._1974960405_DataGroupTInnerClass0_SolidColor2;
        if (oldValue !== value)
        {
            this._1974960405_DataGroupTInnerClass0_SolidColor2 = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_DataGroupTInnerClass0_SolidColor2", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property flightPlan (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'flightPlan' moved to '_2116012985flightPlan'
	 */

    [Bindable(event="propertyChange")]
    public function get flightPlan():spark.components.Group
    {
        return this._2116012985flightPlan;
    }

    public function set flightPlan(value:spark.components.Group):void
    {
    	var oldValue:Object = this._2116012985flightPlan;
        if (oldValue !== value)
        {
            this._2116012985flightPlan = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "flightPlan", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property outerDocument (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'outerDocument' moved to '_88844982outerDocument'
	 */

    [Bindable(event="propertyChange")]
    public function get outerDocument():com.greader.views.DataGroupT
    {
        return this._88844982outerDocument;
    }

    public function set outerDocument(value:com.greader.views.DataGroupT):void
    {
    	var oldValue:Object = this._88844982outerDocument;
        if (oldValue !== value)
        {
            this._88844982outerDocument = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "outerDocument", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property txtDetails (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtDetails' moved to '_58010034txtDetails'
	 */

    [Bindable(event="propertyChange")]
    public function get txtDetails():spark.components.Label
    {
        return this._58010034txtDetails;
    }

    public function set txtDetails(value:spark.components.Label):void
    {
    	var oldValue:Object = this._58010034txtDetails;
        if (oldValue !== value)
        {
            this._58010034txtDetails = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtDetails", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property txtEnd (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtEnd' moved to '_859637685txtEnd'
	 */

    [Bindable(event="propertyChange")]
    public function get txtEnd():spark.components.Label
    {
        return this._859637685txtEnd;
    }

    public function set txtEnd(value:spark.components.Label):void
    {
    	var oldValue:Object = this._859637685txtEnd;
        if (oldValue !== value)
        {
            this._859637685txtEnd = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtEnd", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property txtStart (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtStart' moved to '_1464985646txtStart'
	 */

    [Bindable(event="propertyChange")]
    public function get txtStart():spark.components.Label
    {
        return this._1464985646txtStart;
    }

    public function set txtStart(value:spark.components.Label):void
    {
    	var oldValue:Object = this._1464985646txtStart;
        if (oldValue !== value)
        {
            this._1464985646txtStart = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtStart", oldValue, value));
        }
    }



}
