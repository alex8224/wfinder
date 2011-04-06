
/**
 *  Generated by mxmlc 4.0
 *
 *  Package:    com.greader.views.skin
 *  Class:      UpBtnSkin
 *  Source:     C:\Documents and Settings\zjp\workspace\gReader AIR\src\com\greader\views\skin\UpBtnSkin.mxml
 *  Template:   flex2/compiler/mxml/gen/ClassDef.vm
 *  Time:       2011.03.29 17:44:59 CST
 */

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
import mx.core.IStateClient2;
import mx.core.mx_internal;
import mx.filters.*;
import mx.graphics.SolidColor;
import mx.states.State;
import mx.styles.*;
import spark.primitives.Path;
import spark.skins.SparkSkin;


 
		/** 
		* @copy spark.skins.spark.ApplicationSkin#hostComponent
		*/
		[HostComponent("spark.components.Button")]
		
[States("up", "over", "down", "disabled")]

//  begin class def
public class UpBtnSkin
    extends spark.skins.SparkSkin
    implements mx.core.IStateClient2
{

    //  instance variables
    [Bindable]
	/**
 * @private
 **/
    public var arrow : spark.primitives.Path;


    //  type-import dummies



    //  constructor (Flex display object)
    /**
     * @private
     **/
    public function UpBtnSkin()
    {
        super();





        // layer initializers

       
        // properties
        this.mxmlContent = [_UpBtnSkin_Path1_i()];
        this.currentState = "up";


        // events



		states = [
		  new State ({
		    name: "up",
		    overrides: [
		    ]
		  })
		  ,
		  new State ({
		    name: "over",
		    overrides: [
		    ]
		  })
		  ,
		  new State ({
		    name: "down",
		    overrides: [
		    ]
		  })
		  ,
		  new State ({
		    name: "disabled",
		    overrides: [
		    ]
		  })
		];









    }

    /**
     * @private
     **/ 
    private var __moduleFactoryInitialized:Boolean = false;

    /**
     * @private
     * Override the module factory so we can defer setting style declarations
     * until a module factory is set. Without the correct module factory set
     * the style declaration will end up in the wrong style manager.
     **/ 
    override public function set moduleFactory(factory:IFlexModuleFactory):void
    {
        super.moduleFactory = factory;
        
        if (__moduleFactoryInitialized)
            return;

        __moduleFactoryInitialized = true;


        // our style settings



                         
    }
 
    //  initialize()
    /**
     * @private
     **/
    override public function initialize():void
    {


        super.initialize();
    }


    //  scripts
    //  end scripts


    //	supporting function definitions for properties, events, styles, effects
private function _UpBtnSkin_Path1_i() : spark.primitives.Path
{
	var temp : spark.primitives.Path = new spark.primitives.Path();
	temp.horizontalCenter = 0;
	temp.verticalCenter = -1;
	temp.left = 8.5;
	temp.data = "M 3.5 0.0 L 7.0 7.0 L 0.0 7.0 L 3.5 0.0";
	temp.width = 10;
	temp.height = 20;
	temp.fill = _UpBtnSkin_SolidColor1_c();
	temp.initialized(this, "arrow")
	arrow = temp;
	mx.binding.BindingManager.executeBindings(this, "arrow", arrow);
	return temp;
}

private function _UpBtnSkin_SolidColor1_c() : mx.graphics.SolidColor
{
	var temp : mx.graphics.SolidColor = new mx.graphics.SolidColor();
	temp.color = 2709161;
	mx.binding.BindingManager.executeBindings(this, "temp", temp);
	return temp;
}





    //  embed carrier vars
    //  end embed carrier vars


//  end class def
}

//  end package def
}
