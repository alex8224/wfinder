

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import spark.primitives.Rect;
import spark.components.Label;
import mx.graphics.SolidColor;
import spark.components.Group;
import mx.controls.Image;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property flightPlan (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'flightPlan' moved to '_2116012985flightPlan'
	 */

    [Bindable(event="propertyChange")]
    public function get flightPlan():mx.graphics.SolidColor
    {
        return this._2116012985flightPlan;
    }

    public function set flightPlan(value:mx.graphics.SolidColor):void
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
	 * generated bindable wrapper for property iconFile (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'iconFile' moved to '_738344555iconFile'
	 */

    [Bindable(event="propertyChange")]
    public function get iconFile():mx.controls.Image
    {
        return this._738344555iconFile;
    }

    public function set iconFile(value:mx.controls.Image):void
    {
    	var oldValue:Object = this._738344555iconFile;
        if (oldValue !== value)
        {
            this._738344555iconFile = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "iconFile", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property normalType (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'normalType' moved to '_1255672639normalType'
	 */

    [Bindable(event="propertyChange")]
    public function get normalType():spark.components.Group
    {
        return this._1255672639normalType;
    }

    public function set normalType(value:spark.components.Group):void
    {
    	var oldValue:Object = this._1255672639normalType;
        if (oldValue !== value)
        {
            this._1255672639normalType = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "normalType", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property seqArea (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'seqArea' moved to '_1981659532seqArea'
	 */

    [Bindable(event="propertyChange")]
    public function get seqArea():spark.primitives.Rect
    {
        return this._1981659532seqArea;
    }

    public function set seqArea(value:spark.primitives.Rect):void
    {
    	var oldValue:Object = this._1981659532seqArea;
        if (oldValue !== value)
        {
            this._1981659532seqArea = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "seqArea", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property seqnum (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'seqnum' moved to '_905863481seqnum'
	 */

    [Bindable(event="propertyChange")]
    public function get seqnum():spark.components.Label
    {
        return this._905863481seqnum;
    }

    public function set seqnum(value:spark.components.Label):void
    {
    	var oldValue:Object = this._905863481seqnum;
        if (oldValue !== value)
        {
            this._905863481seqnum = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "seqnum", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property txtFileName (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'txtFileName' moved to '_17857719txtFileName'
	 */

    [Bindable(event="propertyChange")]
    public function get txtFileName():spark.components.Label
    {
        return this._17857719txtFileName;
    }

    public function set txtFileName(value:spark.components.Label):void
    {
    	var oldValue:Object = this._17857719txtFileName;
        if (oldValue !== value)
        {
            this._17857719txtFileName = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "txtFileName", oldValue, value));
        }
    }



}
