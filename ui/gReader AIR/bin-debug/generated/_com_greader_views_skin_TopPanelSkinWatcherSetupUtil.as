






package
{
import mx.core.IFlexModuleFactory;
import mx.binding.ArrayElementWatcher;
import mx.binding.FunctionReturnWatcher;
import mx.binding.IWatcherSetupUtil2;
import mx.binding.PropertyWatcher;
import mx.binding.RepeaterComponentWatcher;
import mx.binding.RepeaterItemWatcher;
import mx.binding.StaticPropertyWatcher;
import mx.binding.XMLWatcher;
import mx.binding.Watcher;

[ExcludeClass]
public class _com_greader_views_skin_TopPanelSkinWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _com_greader_views_skin_TopPanelSkinWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import com.greader.views.skin.TopPanelSkin;
        (com.greader.views.skin.TopPanelSkin).watcherSetupUtil = new _com_greader_views_skin_TopPanelSkinWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import spark.primitives.Rect;
        import mx.core.DeferredInstanceFromClass;
        import mx.graphics.LinearGradientStroke;
        import __AS3__.vec.Vector;
        import mx.binding.IBindingClient;
        import spark.primitives.RectangularDropShadow;
        import mx.core.ClassFactory;
        import spark.skins.SparkSkin;
        import spark.filters.BlurFilter;
        import mx.states.AddItems;
        import mx.core.IFactory;
        import mx.core.DeferredInstanceFromFunction;
        import mx.graphics.GradientEntry;
        import flash.events.EventDispatcher;
        import mx.states.State;
        import spark.layouts.VerticalLayout;
        import mx.core.IFlexModuleFactory;
        import mx.binding.BindingManager;
        import mx.graphics.SolidColor;
        import spark.components.Group;
        import mx.core.IDeferredInstance;
        import mx.core.IPropertyChangeNotifier;
        import flash.events.IEventDispatcher;
        import mx.core.IStateClient2;
        import spark.components.Label;
        import flash.display.DisplayObject;
        import mx.states.SetProperty;
        import mx.core.mx_internal;
        import mx.graphics.LinearGradient;
        import spark.layouts.HorizontalLayout;
        import flash.events.Event;

        // writeWatcher id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[2] = new mx.binding.PropertyWatcher("cornerRadius",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=2 size=1
        [
        bindings[2]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[1] = new mx.binding.PropertyWatcher("bottomGroupMask",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=1 size=1
        [
        bindings[1]
        ]
,
                                                                 propertyGetter
);

        // writeWatcher id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[0] = new mx.binding.PropertyWatcher("topGroupMask",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=0 size=1
        [
        bindings[0]
        ]
,
                                                                 propertyGetter
);


        // writeWatcherBottom id=2 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[2].updateParent(target);

 





        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].updateParent(target);

 





        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





    }
}

}
