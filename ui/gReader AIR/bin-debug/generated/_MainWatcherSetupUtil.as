






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
public class _MainWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _MainWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import Main;
        (Main).watcherSetupUtil = new _MainWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import spark.primitives.Rect;
        import mx.core.DeferredInstanceFromClass;
        import mx.collections.ArrayCollection;
        import spark.components.TitleWindow;
        import __AS3__.vec.Vector;
        import mx.events.CloseEvent;
        import com.greader.commutil.BuilderDb;
        import com.greader.controller.TestSqlCommand;
        import mx.utils.StringUtil;
        import mx.binding.IBindingClient;
        import com.greader.event.ExecuteEvent;
        import spark.components.WindowedApplication;
        import mx.core.ClassFactory;
        import mx.core.IFactory;
        import spark.effects.Fade;
        import flash.utils.setTimeout;
        import mx.core.DeferredInstanceFromFunction;
        import spark.components.Application;
        import flash.events.EventDispatcher;
        import mx.core.IFlexModuleFactory;
        import com.greader.controller.ConnectToServer;
        import mx.binding.BindingManager;
        import mx.managers.PopUpManager;
        import spark.components.TextInput;
        import mx.graphics.SolidColor;
        import spark.components.Group;
        import mx.core.IDeferredInstance;
        import spark.events.IndexChangeEvent;
        import mx.core.IPropertyChangeNotifier;
        import flash.events.IEventDispatcher;
        import flash.events.KeyboardEvent;
        import mx.core.mx_internal;
        import mx.events.FlexEvent;
        import spark.layouts.BasicLayout;
        import com.greader.views.sqlUI;
        import mx.events.ListEvent;
        import flash.events.Event;

        // writeWatcher id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[0] = new mx.binding.PropertyWatcher("fadeEffect",
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
