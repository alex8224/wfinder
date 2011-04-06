
package com.greader.views
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
import spark.components.TextInput;
import spark.components.TitleWindow;
import mx.validators.StringValidator;
import spark.components.Label;
import mx.containers.Form;
import spark.components.HGroup;
import spark.layouts.BasicLayout;
import spark.components.TitleWindow;
import mx.containers.FormItem;
import mx.states.State;
import spark.components.Button;

public class loginForm extends spark.components.TitleWindow
{
	public function loginForm() {}

	[Bindable]
	public var userName : spark.components.TextInput;
	[Bindable]
	public var passWord : spark.components.TextInput;

	mx_internal var _bindings : Array;
	mx_internal var _watchers : Array;
	mx_internal var _bindingsByDestination : Object;
	mx_internal var _bindingsBeginWithWord : Object;

include "C:/Documents and Settings/zjp/workspace/gReader AIR/src/com/greader/views/loginForm.mxml:10,63";

}}
