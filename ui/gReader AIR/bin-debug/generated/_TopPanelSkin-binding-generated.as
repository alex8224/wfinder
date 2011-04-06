

import flash.events.Event;
import flash.events.EventDispatcher;
import flash.events.IEventDispatcher;
import mx.core.IPropertyChangeNotifier;
import mx.events.PropertyChangeEvent;
import mx.utils.ObjectProxy;
import mx.utils.UIDUtil;

import spark.primitives.Rect;
import flash.display.*;
import flash.html.*;
import com.greader.views.skin.*;
import flash.debugger.*;
import flash.printing.*;
import spark.primitives.RectangularDropShadow;
import flash.geom.*;
import flash.events.*;
import flash.accessibility.*;
import flash.filesystem.*;
import flash.xml.*;
import mx.filters.*;
import flash.system.*;
import flash.profiler.*;
import flash.html.script.*;
import flash.external.*;
import flash.net.*;
import spark.components.Panel;
import mx.graphics.SolidColor;
import flash.desktop.*;
import spark.components.Group;
import flash.utils.*;
import flash.text.*;
import spark.components.Label;
import mx.binding.*;
import flash.data.*;
import flash.ui.*;
import flash.media.*;
import mx.styles.*;
import flash.errors.*;

class BindableProperty
{
	/*
	 * generated bindable wrapper for property _TopPanelSkin_Group1 (public)
	 * - generated setter
	 * - generated getter
	 * - original public var '_TopPanelSkin_Group1' moved to '_621860186_TopPanelSkin_Group1'
	 */

    [Bindable(event="propertyChange")]
    public function get _TopPanelSkin_Group1():spark.components.Group
    {
        return this._621860186_TopPanelSkin_Group1;
    }

    public function set _TopPanelSkin_Group1(value:spark.components.Group):void
    {
    	var oldValue:Object = this._621860186_TopPanelSkin_Group1;
        if (oldValue !== value)
        {
            this._621860186_TopPanelSkin_Group1 = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_TopPanelSkin_Group1", oldValue, value));
        }
    }

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
	 * generated bindable wrapper for property bottomGroup (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'bottomGroup' moved to '_631173356bottomGroup'
	 */

    [Bindable(event="propertyChange")]
    public function get bottomGroup():spark.components.Group
    {
        return this._631173356bottomGroup;
    }

    public function set bottomGroup(value:spark.components.Group):void
    {
    	var oldValue:Object = this._631173356bottomGroup;
        if (oldValue !== value)
        {
            this._631173356bottomGroup = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bottomGroup", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property bottomGroupMask (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'bottomGroupMask' moved to '_1770004448bottomGroupMask'
	 */

    [Bindable(event="propertyChange")]
    public function get bottomGroupMask():spark.components.Group
    {
        return this._1770004448bottomGroupMask;
    }

    public function set bottomGroupMask(value:spark.components.Group):void
    {
    	var oldValue:Object = this._1770004448bottomGroupMask;
        if (oldValue !== value)
        {
            this._1770004448bottomGroupMask = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bottomGroupMask", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property bottomMaskRect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'bottomMaskRect' moved to '_149872069bottomMaskRect'
	 */

    [Bindable(event="propertyChange")]
    public function get bottomMaskRect():spark.primitives.Rect
    {
        return this._149872069bottomMaskRect;
    }

    public function set bottomMaskRect(value:spark.primitives.Rect):void
    {
    	var oldValue:Object = this._149872069bottomMaskRect;
        if (oldValue !== value)
        {
            this._149872069bottomMaskRect = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "bottomMaskRect", oldValue, value));
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
	 * generated bindable wrapper for property contents (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'contents' moved to '_567321830contents'
	 */

    [Bindable(event="propertyChange")]
    public function get contents():spark.components.Group
    {
        return this._567321830contents;
    }

    public function set contents(value:spark.components.Group):void
    {
    	var oldValue:Object = this._567321830contents;
        if (oldValue !== value)
        {
            this._567321830contents = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "contents", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property controlBarGroup (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'controlBarGroup' moved to '_139410089controlBarGroup'
	 */

    [Bindable(event="propertyChange")]
    public function get controlBarGroup():spark.components.Group
    {
        return this._139410089controlBarGroup;
    }

    public function set controlBarGroup(value:spark.components.Group):void
    {
    	var oldValue:Object = this._139410089controlBarGroup;
        if (oldValue !== value)
        {
            this._139410089controlBarGroup = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "controlBarGroup", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property dropShadow (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'dropShadow' moved to '_906978543dropShadow'
	 */

    [Bindable(event="propertyChange")]
    public function get dropShadow():spark.primitives.RectangularDropShadow
    {
        return this._906978543dropShadow;
    }

    public function set dropShadow(value:spark.primitives.RectangularDropShadow):void
    {
    	var oldValue:Object = this._906978543dropShadow;
        if (oldValue !== value)
        {
            this._906978543dropShadow = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "dropShadow", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property lightTitle (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'lightTitle' moved to '_219039006lightTitle'
	 */

    [Bindable(event="propertyChange")]
    public function get lightTitle():spark.primitives.Rect
    {
        return this._219039006lightTitle;
    }

    public function set lightTitle(value:spark.primitives.Rect):void
    {
    	var oldValue:Object = this._219039006lightTitle;
        if (oldValue !== value)
        {
            this._219039006lightTitle = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "lightTitle", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property tbDiv (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'tbDiv' moved to '_110116675tbDiv'
	 */

    [Bindable(event="propertyChange")]
    public function get tbDiv():spark.primitives.Rect
    {
        return this._110116675tbDiv;
    }

    public function set tbDiv(value:spark.primitives.Rect):void
    {
    	var oldValue:Object = this._110116675tbDiv;
        if (oldValue !== value)
        {
            this._110116675tbDiv = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tbDiv", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property tbHilite (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'tbHilite' moved to '_754825923tbHilite'
	 */

    [Bindable(event="propertyChange")]
    public function get tbHilite():spark.primitives.Rect
    {
        return this._754825923tbHilite;
    }

    public function set tbHilite(value:spark.primitives.Rect):void
    {
    	var oldValue:Object = this._754825923tbHilite;
        if (oldValue !== value)
        {
            this._754825923tbHilite = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "tbHilite", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property titleDisplay (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'titleDisplay' moved to '_1893287094titleDisplay'
	 */

    [Bindable(event="propertyChange")]
    public function get titleDisplay():spark.components.Label
    {
        return this._1893287094titleDisplay;
    }

    public function set titleDisplay(value:spark.components.Label):void
    {
    	var oldValue:Object = this._1893287094titleDisplay;
        if (oldValue !== value)
        {
            this._1893287094titleDisplay = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "titleDisplay", oldValue, value));
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

	/*
	 * generated bindable wrapper for property topGroup (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'topGroup' moved to '_988229078topGroup'
	 */

    [Bindable(event="propertyChange")]
    public function get topGroup():spark.components.Group
    {
        return this._988229078topGroup;
    }

    public function set topGroup(value:spark.components.Group):void
    {
    	var oldValue:Object = this._988229078topGroup;
        if (oldValue !== value)
        {
            this._988229078topGroup = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "topGroup", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property topGroupMask (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'topGroupMask' moved to '_181676086topGroupMask'
	 */

    [Bindable(event="propertyChange")]
    public function get topGroupMask():spark.components.Group
    {
        return this._181676086topGroupMask;
    }

    public function set topGroupMask(value:spark.components.Group):void
    {
    	var oldValue:Object = this._181676086topGroupMask;
        if (oldValue !== value)
        {
            this._181676086topGroupMask = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "topGroupMask", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property topMaskRect (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'topMaskRect' moved to '_1437106021topMaskRect'
	 */

    [Bindable(event="propertyChange")]
    public function get topMaskRect():spark.primitives.Rect
    {
        return this._1437106021topMaskRect;
    }

    public function set topMaskRect(value:spark.primitives.Rect):void
    {
    	var oldValue:Object = this._1437106021topMaskRect;
        if (oldValue !== value)
        {
            this._1437106021topMaskRect = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "topMaskRect", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property cornerRadius (private)
	 * - generated setter
	 * - generated getter
	 * - original private var 'cornerRadius' moved to '_583595847cornerRadius'
	 */

    [Bindable(event="propertyChange")]
    private function get cornerRadius():Number
    {
        return this._583595847cornerRadius;
    }

    private function set cornerRadius(value:Number):void
    {
    	var oldValue:Object = this._583595847cornerRadius;
        if (oldValue !== value)
        {
            this._583595847cornerRadius = value;
           if (this.hasEventListener("propertyChange"))
               this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "cornerRadius", oldValue, value));
        }
    }

	/*
	 * generated bindable wrapper for property hostComponent (public)
	 * - generated setter
	 * - generated getter
	 * - original public var 'hostComponent' moved to '_213507019hostComponent'
	 */

    [Bindable(event="propertyChange")]
    public function get hostComponent():spark.components.Panel
    {
        return this._213507019hostComponent;
    }

    public function set hostComponent(value:spark.components.Panel):void
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
