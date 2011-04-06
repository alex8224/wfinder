






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
public class _com_greader_views_render_listitemrenderWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _com_greader_views_render_listitemrenderWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import com.greader.views.render.listitemrender;
        (com.greader.views.render.listitemrender).watcherSetupUtil = new _com_greader_views_render_listitemrenderWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import spark.primitives.Rect;
        import mx.core.DeferredInstanceFromClass;
        import __AS3__.vec.Vector;
        import mx.binding.IBindingClient;
        import spark.effects.animation.SimpleMotionPath;
        import com.greader.util;
        import mx.states.Transition;
        import mx.core.ClassFactory;
        import mx.core.IFactory;
        import mx.core.DeferredInstanceFromFunction;
        import spark.components.HGroup;
        import flash.events.EventDispatcher;
        import mx.states.State;
        import spark.effects.Animate;
        import mx.core.IFlexModuleFactory;
        import mx.binding.BindingManager;
        import mx.graphics.SolidColor;
        import mx.core.IDeferredInstance;
        import spark.components.Group;
        import mx.controls.Image;
        import mx.core.IPropertyChangeNotifier;
        import flash.events.IEventDispatcher;
        import mx.core.IStateClient2;
        import spark.components.Label;
        import mx.states.SetProperty;
        import mx.core.mx_internal;
        import mx.events.FlexEvent;
        import spark.components.supportClasses.ItemRenderer;
        import flash.events.Event;
        import spark.filters.DropShadowFilter;

        // writeWatcher id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[0] = new mx.binding.PropertyWatcher("flightPlan",
                                                                             {
                propertyChange: true
            }
,
                                                                         // writeWatcherListeners id=0 size=4
        [
        bindings[0],
        bindings[1],
        bindings[2],
        bindings[3]
        ]
,
                                                                 propertyGetter
);


        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





    }
}

}
