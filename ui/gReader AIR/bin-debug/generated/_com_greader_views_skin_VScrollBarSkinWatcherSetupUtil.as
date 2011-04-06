






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
public class _com_greader_views_skin_VScrollBarSkinWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _com_greader_views_skin_VScrollBarSkinWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import com.greader.views.skin.VScrollBarSkin;
        (com.greader.views.skin.VScrollBarSkin).watcherSetupUtil = new _com_greader_views_skin_VScrollBarSkinWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import mx.core.IFlexModuleFactory;
        import mx.binding.BindingManager;
        import mx.core.DeferredInstanceFromClass;
        import __AS3__.vec.Vector;
        import spark.skins.spark.VScrollBarThumbSkin;
        import mx.core.IDeferredInstance;
        import mx.binding.IBindingClient;
        import mx.core.IPropertyChangeNotifier;
        import flash.events.IEventDispatcher;
        import mx.core.IStateClient2;
        import mx.core.ClassFactory;
        import spark.skins.SparkSkin;
        import mx.core.IFactory;
        import mx.states.SetProperty;
        import mx.core.mx_internal;
        import mx.core.DeferredInstanceFromFunction;
        import spark.skins.spark.ScrollBarDownButtonSkin;
        import flash.events.EventDispatcher;
        import mx.states.State;
        import flash.events.Event;
        import spark.skins.spark.VScrollBarTrackSkin;
        import spark.skins.spark.ScrollBarUpButtonSkin;
        import spark.components.Button;

        // writeWatcher id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher shouldWriteChildren=true


        // writeWatcherBottom id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.PropertyWatcher

 





    }
}

}
