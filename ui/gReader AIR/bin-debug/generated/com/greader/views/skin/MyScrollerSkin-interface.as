
package com.greader.views.skin
{
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
import mx.styles.*;
import spark.components.HScrollBar;
import spark.components.VScrollBar;
import spark.skins.SparkSkin;
import spark.skins.SparkSkin;

 
        /** 
         * @copy spark.skins.spark.ApplicationSkin#hostComponent
         */
        [HostComponent("spark.components.Scroller")]
    
public class MyScrollerSkin extends spark.skins.SparkSkin
{
	public function MyScrollerSkin() {}

	[Bindable]
	public var verticalScrollBar : spark.components.VScrollBar;
	[Bindable]
	public var horizontalScrollBar : spark.components.HScrollBar;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "C:/Documents and Settings/zjp/workspace/gReader AIR/src/com/greader/views/skin/MyScrollerSkin.mxml:47,79";

}}
