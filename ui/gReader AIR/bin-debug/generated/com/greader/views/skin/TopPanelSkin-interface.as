
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
import mx.graphics.SolidColor;
import mx.styles.*;
import spark.components.Group;
import spark.components.Label;
import spark.primitives.Rect;
import spark.primitives.RectangularDropShadow;
import spark.skins.SparkSkin;
import spark.primitives.Rect;
import spark.filters.BlurFilter;
import spark.skins.SparkSkin;
import mx.graphics.LinearGradientStroke;
import mx.graphics.LinearGradient;
import mx.graphics.SolidColor;
import spark.layouts.HorizontalLayout;
import mx.graphics.GradientEntry;
import spark.components.Group;
import mx.states.State;
import spark.layouts.VerticalLayout;

 
        /** 
         * @copy spark.skins.spark.ApplicationSkin#hostComponent
         */
        [HostComponent("spark.components.Panel")]
        
public class TopPanelSkin extends spark.skins.SparkSkin
{
	public function TopPanelSkin() {}

	[Bindable]
	public var dropShadow : spark.primitives.RectangularDropShadow;
	[Bindable]
	public var lightTitle : spark.primitives.Rect;
	[Bindable]
	public var topGroupMask : spark.components.Group;
	[Bindable]
	public var topMaskRect : spark.primitives.Rect;
	[Bindable]
	public var bottomGroupMask : spark.components.Group;
	[Bindable]
	public var bottomMaskRect : spark.primitives.Rect;
	[Bindable]
	public var background : spark.primitives.Rect;
	[Bindable]
	public var backgroundFill : mx.graphics.SolidColor;
	[Bindable]
	public var contents : spark.components.Group;
	[Bindable]
	public var topGroup : spark.components.Group;
	[Bindable]
	public var tbHilite : spark.primitives.Rect;
	[Bindable]
	public var tbDiv : spark.primitives.Rect;
	[Bindable]
	public var titleDisplay : spark.components.Label;
	[Bindable]
	public var contentGroup : spark.components.Group;
	[Bindable]
	public var bottomGroup : spark.components.Group;
	[Bindable]
	public var controlBarGroup : spark.components.Group;
	[Bindable]
	public var titleLight : spark.primitives.Rect;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "C:/Documents and Settings/zjp/workspace/gReader AIR/src/com/greader/views/skin/TopPanelSkin.mxml:36,102";

}}
