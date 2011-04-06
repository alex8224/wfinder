

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import spark.components.TextInput;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property passWord (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'passWord' moved to '_1216032443passWord'
	 */

    [Bindable(event="propertyChange")]
    public function get passWord():spark.components.TextInput
    {
        return this._1216032443passWord;
    }

    public function set passWord(value:spark.components.TextInput):void
    {
    	var oldValue:Object = this._1216032443passWord;
        if (oldValue !== value)
        {
            this._1216032443passWord = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "passWord", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property userName (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'userName' moved to '_266666762userName'
	 */

    [Bindable(event="propertyChange")]
    public function get userName():spark.components.TextInput
    {
        return this._266666762userName;
    }

    public function set userName(value:spark.components.TextInput):void
    {
    	var oldValue:Object = this._266666762userName;
        if (oldValue !== value)
        {
            this._266666762userName = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "userName", oldValue, value));
        }
    }



}
