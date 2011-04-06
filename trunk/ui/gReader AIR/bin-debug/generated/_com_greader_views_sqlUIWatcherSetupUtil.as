






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
public class _com_greader_views_sqlUIWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _com_greader_views_sqlUIWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import com.greader.views.sqlUI;
        (com.greader.views.sqlUI).watcherSetupUtil = new _com_greader_views_sqlUIWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import mx.core.DeferredInstanceFromClass;
        import mx.collections.ArrayCollection;
        import com.greader.views.render.listitemrender;
        import __AS3__.vec.Vector;
        import com.greader.model.GridPager;
        import mx.binding.IBindingClient;
        import com.greader.views.searchGroup;
        import com.greader.event.ExecuteEvent;
        import mx.core.ClassFactory;
        import mx.core.IFactory;
        import mx.collections.IList;
        import com.greader.views.skin.listskin;
        import mx.core.DeferredInstanceFromFunction;
        import com.greader.event.SearchEvent;
        import com.greader.event.FocusTextEvent;
        import flash.events.EventDispatcher;
        import spark.components.List;
        import spark.layouts.VerticalLayout;
        import mx.controls.Alert;
        import mx.core.IFlexModuleFactory;
        import mx.binding.BindingManager;
        import spark.components.Group;
        import mx.core.IDeferredInstance;
        import spark.events.IndexChangeEvent;
        import mx.core.IPropertyChangeNotifier;
        import flash.events.IEventDispatcher;
        import flash.events.KeyboardEvent;
        import mx.core.mx_internal;
        import mx.events.FlexEvent;
        import spark.layouts.BasicLayout;
        import spark.components.VGroup;
        import mx.events.ListEvent;
        import flash.events.Event;

        // writeWatcher id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[0] = new mx.binding.PropertyWatcher("resultSet",
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
