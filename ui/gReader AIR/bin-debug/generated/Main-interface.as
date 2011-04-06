
package 
{
import com.greader.views.sqlUI;
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
import spark.components.WindowedApplication;
import spark.effects.Fade;
import spark.components.WindowedApplication;
import spark.primitives.Rect;
import spark.layouts.BasicLayout;
import spark.components.Group;

public class Main extends spark.components.WindowedApplication
{
	public function Main() {}

	[Bindable]
	public var fadeEffect : spark.effects.Fade;
	[Bindable]
	public var backgroundFill : mx.graphics.SolidColor;
	[Bindable]
	public var sqlgrid : com.greader.views.sqlUI;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "C:/Documents and Settings/zjp/workspace/gReader AIR/src/Main.mxml:24,208";

}}
