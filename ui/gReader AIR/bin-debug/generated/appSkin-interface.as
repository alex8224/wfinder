
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
import spark.components.Group;
import spark.components.Label;
import spark.primitives.Rect;
import spark.skins.SparkSkin;
import spark.primitives.Rect;
import mx.graphics.SolidColorStroke;
import spark.skins.SparkSkin;
import mx.graphics.LinearGradientStroke;
import mx.graphics.LinearGradient;
import spark.components.Group;
import mx.graphics.GradientEntry;
import mx.states.State;
import spark.layouts.VerticalLayout;

[HostComponent("spark.components.WindowedApplication")]
public class appSkin extends spark.skins.SparkSkin
{
	public function appSkin() {}

	[Bindable]
	public var backgroundRect : spark.primitives.Rect;
	[Bindable]
	public var contentGroup : spark.components.Group;
	[Bindable]
	public var statusBar : spark.components.Group;
	[Bindable]
	public var statusText : spark.components.Label;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "C:/Documents and Settings/zjp/workspace/gReader AIR/src/appSkin.mxml:47,84";

}}
