
package com.greader.views
{
import com.greader.views.searchGroup;
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
import spark.components.List;
import spark.components.VGroup;
import spark.layouts.BasicLayout;
import spark.components.Group;
import spark.layouts.VerticalLayout;


		[Event(name="execute", type="com.greader.event.ExecuteEvent")]
	
public class sqlUI extends spark.components.Group
{
	public function sqlUI() {}

	[Bindable]
	public var container : spark.components.VGroup;
	[Bindable]
	public var empname : com.greader.views.searchGroup;
	[Bindable]
	public var rlist : spark.components.List;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "C:/Documents and Settings/zjp/workspace/gReader AIR/src/com/greader/views/sqlUI.mxml:17,170";

}}
