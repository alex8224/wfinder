
package 
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
import mx.controls.Image;
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
import spark.components.Label;
import spark.components.supportClasses.ItemRenderer;
import spark.primitives.Rect;
import spark.components.HGroup;
import spark.components.supportClasses.ItemRenderer;
import spark.components.Group;
import mx.states.State;
import spark.effects.animation.SimpleMotionPath;
import spark.filters.DropShadowFilter;
import spark.effects.Animate;
import mx.states.Transition;

public class listitemrender extends spark.components.supportClasses.ItemRenderer
{
	public function listitemrender() {}

	[Bindable]
	public var flightPlan : mx.graphics.SolidColor;
	[Bindable]
	public var iconFile : mx.controls.Image;
	[Bindable]
	public var txtFileName : spark.components.Label;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "C:/Documents and Settings/zjp/workspace/gReader AIR/src/listitemrender.mxml:7,22";

}}
