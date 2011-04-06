






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
public class _com_greader_views_DataGroupTWatcherSetupUtil
    implements mx.binding.IWatcherSetupUtil2
{
    public function _com_greader_views_DataGroupTWatcherSetupUtil()
    {
        super();
    }

    public static function init(fbs:IFlexModuleFactory):void
    {
        import com.greader.views.DataGroupT;
        (com.greader.views.DataGroupT).watcherSetupUtil = new _com_greader_views_DataGroupTWatcherSetupUtil();
    }

    public function setup(target:Object,
                          propertyGetter:Function,
                          staticPropertyGetter:Function,
                          bindings:Array,
                          watchers:Array):void
    {
        import spark.components.Window;
        import mx.core.IFlexModuleFactory;
        import mx.core.DeferredInstanceFromClass;
        import spark.components.DataGroup;
        import mx.collections.ArrayCollection;
        import __AS3__.vec.Vector;
        import spark.components.Panel;
        import mx.core.IDeferredInstance;
        import spark.components.Scroller;
        import mx.binding.IBindingClient;
        import com.greader.views.DataGroupTInnerClass0;
        import mx.core.IPropertyChangeNotifier;
        import mx.core.ClassFactory;
        import mx.core.IFactory;
        import mx.collections.IList;
        import com.greader.views.skin.TDFPanelSkin;
        import mx.core.mx_internal;
        import mx.core.DeferredInstanceFromFunction;
        import spark.layouts.BasicLayout;
        import spark.layouts.VerticalLayout;

        // writeWatcher id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.FunctionReturnWatcher shouldWriteChildren=true


        // writeWatcherBottom id=0 shouldWriteSelf=false class=flex2.compiler.as3.binding.FunctionReturnWatcher

 





    }
}

}
