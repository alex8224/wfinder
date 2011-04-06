
package com.greader.views.skin
{
import com.greader.views.skin.listskinInnerClass0;
import flash.accessibility.*;
import flash.data.*;
import flash.debugger.*;
import flash.desktop.*;
import flash.display.*;
import flash.errors.*;
import flash.events.*;
import flash.external.*;
import flash.filesystem.*;
import flash.geom.*;
import flash.html.*;
import flash.html.script.*;
import flash.media.*;
import flash.net.*;
import flash.printing.*;
import flash.profiler.*;
import flash.system.*;
import flash.text.*;
import flash.ui.*;
import flash.utils.*;
import flash.xml.*;
import mx.binding.*;
import mx.core.ClassFactory;
import mx.core.DeferredInstanceFromClass;
import mx.core.DeferredInstanceFromFunction;
import mx.core.IDeferredInstance;
import mx.core.IFactory;
import mx.core.IFlexModuleFactory;
import mx.core.IPropertyChangeNotifier;
import mx.core.mx_internal;
import mx.filters.*;
import mx.graphics.SolidColor;
import mx.graphics.SolidColorStroke;
import mx.styles.*;
import spark.components.DataGroup;
import spark.components.Scroller;
import spark.primitives.Rect;
import spark.skins.SparkSkin;
import spark.skins.SparkSkin;
import mx.states.State;
import spark.layouts.VerticalLayout;

 
        /** 
         * @copy spark.skins.spark.ApplicationSkin#hostComponent
         */
        [HostComponent("spark.components.List")]
    
public class listskin extends spark.skins.SparkSkin
{
	public function listskin() {}

	[Bindable]
	public var dropIndicator : mx.core.IFactory;
	[Bindable]
	public var border : spark.primitives.Rect;
	[Bindable]
	public var borderStroke : mx.graphics.SolidColorStroke;
	[Bindable]
	public var background : spark.primitives.Rect;
	[Bindable]
	public var bgFill : mx.graphics.SolidColor;
	[Bindable]
	public var scroller : spark.components.Scroller;
	[Bindable]
	public var dataGroup : spark.components.DataGroup;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "C:/Documents and Settings/zjp/workspace/gReader AIR/src/com/greader/views/skin/listskin.mxml:36,86";

}}
