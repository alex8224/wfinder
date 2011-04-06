






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
public class _com_greader_views_searchGroupWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _com_greader_views_searchGroupWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import com.greader.views.searchGroup;
        (com.greader.views.searchGroup).watcherSetupUtil = new _com_greader_views_searchGroupWatcherSetupUtil();
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
        import mx.utils.StringUtil;
        import spark.events.TextOperationEvent;
        import mx.core.ClassFactory;
        import spark.filters.BlurFilter;
        import mx.core.IFactory;
        import mx.core.DeferredInstanceFromFunction;
        import com.greader.event.SearchEvent;
        import flash.events.EventDispatcher;
        import mx.controls.Alert;
        import mx.core.IFlexModuleFactory;
        import mx.binding.BindingManager;
        import mx.graphics.SolidColor;
        import spark.components.TextInput;
        import spark.components.Group;
        import mx.core.IDeferredInstance;
        import mx.core.IPropertyChangeNotifier;
        import flash.events.IEventDispatcher;
        import mx.core.mx_internal;
        import mx.events.FlexEvent;
        import spark.layouts.BasicLayout;
        import flash.events.Event;
        import spark.filters.DropShadowFilter;
        import flashx.textLayout.formats.TextLayoutFormat;

        // writeWatcher id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[0] = new mx.binding.PropertyWatcher("textValue",
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


        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





    }
}

}
