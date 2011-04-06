






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
public class _com_greader_views_loginFormWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _com_greader_views_loginFormWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import com.greader.views.loginForm;
        (com.greader.views.loginForm).watcherSetupUtil = new _com_greader_views_loginFormWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import mx.core.DeferredInstanceFromClass;
        import spark.components.TitleWindow;
        import __AS3__.vec.Vector;
        import com.greader.controller.LoginCommand;
        import flash.events.MouseEvent;
        import mx.binding.IBindingClient;
        import mx.validators.StringValidator;
        import mx.rpc.events.ResultEvent;
        import mx.core.ClassFactory;
        import mx.rpc.AsyncToken;
        import mx.states.AddItems;
        import mx.core.IFactory;
        import mx.core.DeferredInstanceFromFunction;
        import spark.components.HGroup;
        import mx.rpc.events.FaultEvent;
        import com.greader.model.LoginState;
        import mx.containers.FormItem;
        import flash.events.EventDispatcher;
        import mx.states.State;
        import spark.components.Button;
        import mx.core.IFlexModuleFactory;
        import mx.binding.BindingManager;
        import mx.containers.Form;
        import spark.components.TextInput;
        import mx.core.IDeferredInstance;
        import mx.core.IPropertyChangeNotifier;
        import flash.events.IEventDispatcher;
        import mx.collections.ItemResponder;
        import mx.core.IStateClient2;
        import spark.components.Label;
        import mx.states.SetProperty;
        import mx.core.mx_internal;
        import spark.layouts.BasicLayout;
        import flash.events.Event;

        // writeWatcher id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[0] = new mx.binding.PropertyWatcher("userName",
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

        // writeWatcher id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true
        watchers[1] = new mx.binding.PropertyWatcher("passWord",
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


        // writeWatcherBottom id=0 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[0].updateParent(target);

 





        // writeWatcherBottom id=1 shouldWriteSelf=true class=flex2.compiler.as3.binding.PropertyWatcher
        watchers[1].updateParent(target);

 





    }
}

}
