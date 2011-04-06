package {
import flash.display.DisplayObject;
import flash.utils.*;
import mx.core.IFlexModuleFactory;
import mx.styles.IStyleManager2;
import mx.events.Request;
import mx.styles.StyleManagerImpl;
import mx.managers.systemClasses.ChildManager;
import mx.core.TextFieldFactory; TextFieldFactory;
import flash.system.*
import mx.accessibility.AlertAccImpl;
import spark.accessibility.RichEditableTextAccImpl;
import mx.accessibility.PanelAccImpl;
import spark.accessibility.TextBaseAccImpl;
import spark.accessibility.PanelAccImpl;
import spark.accessibility.ListAccImpl;
import mx.accessibility.ButtonAccImpl;
import mx.accessibility.UIComponentAccProps;
import spark.accessibility.ButtonBaseAccImpl;
import spark.accessibility.ListBaseAccImpl;
import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import mx.collections.ArrayCollection;
import mx.collections.ArrayList;
import mx.utils.ObjectProxy;
import mx.effects.EffectManager;
import mx.core.mx_internal;

[Mixin]
public class _Main_FlexInit
{
   public function _Main_FlexInit()
   {
       super();
   }
   public static function init(fbs:IFlexModuleFactory):void
   {
       new ChildManager(fbs);
       var styleManager:IStyleManager2;
       styleManager = new StyleManagerImpl(fbs);
       EffectManager.mx_internal::registerEffectTrigger("addedEffect", "added");
       EffectManager.mx_internal::registerEffectTrigger("closeEffect", "windowClose");
       EffectManager.mx_internal::registerEffectTrigger("completeEffect", "complete");
       EffectManager.mx_internal::registerEffectTrigger("creationCompleteEffect", "creationComplete");
       EffectManager.mx_internal::registerEffectTrigger("focusInEffect", "focusIn");
       EffectManager.mx_internal::registerEffectTrigger("focusOutEffect", "focusOut");
       EffectManager.mx_internal::registerEffectTrigger("hideEffect", "hide");
       EffectManager.mx_internal::registerEffectTrigger("minimizeEffect", "windowMinimize");
       EffectManager.mx_internal::registerEffectTrigger("mouseDownEffect", "mouseDown");
       EffectManager.mx_internal::registerEffectTrigger("mouseUpEffect", "mouseUp");
       EffectManager.mx_internal::registerEffectTrigger("moveEffect", "move");
       EffectManager.mx_internal::registerEffectTrigger("removedEffect", "removed");
       EffectManager.mx_internal::registerEffectTrigger("resizeEffect", "resize");
       EffectManager.mx_internal::registerEffectTrigger("resizeEndEffect", "resizeEnd");
       EffectManager.mx_internal::registerEffectTrigger("resizeStartEffect", "resizeStart");
       EffectManager.mx_internal::registerEffectTrigger("rollOutEffect", "rollOut");
       EffectManager.mx_internal::registerEffectTrigger("rollOverEffect", "rollOver");
       EffectManager.mx_internal::registerEffectTrigger("showEffect", "show");
       EffectManager.mx_internal::registerEffectTrigger("unminimizeEffect", "windowUnminimize");
       // trace("Flex accessibility startup: " + Capabilities.hasAccessibility);
       if (Capabilities.hasAccessibility) {
          mx.accessibility.AlertAccImpl.enableAccessibility();
          spark.accessibility.RichEditableTextAccImpl.enableAccessibility();
          mx.accessibility.PanelAccImpl.enableAccessibility();
          spark.accessibility.TextBaseAccImpl.enableAccessibility();
          spark.accessibility.PanelAccImpl.enableAccessibility();
          spark.accessibility.ListAccImpl.enableAccessibility();
          mx.accessibility.ButtonAccImpl.enableAccessibility();
          mx.accessibility.UIComponentAccProps.enableAccessibility();
          spark.accessibility.ButtonBaseAccImpl.enableAccessibility();
          spark.accessibility.ListBaseAccImpl.enableAccessibility();
       }
       try {
       if (flash.net.getClassByAlias("flex.messaging.io.ArrayCollection") == null){
           flash.net.registerClassAlias("flex.messaging.io.ArrayCollection", mx.collections.ArrayCollection);}
       } catch (e:Error) {
           flash.net.registerClassAlias("flex.messaging.io.ArrayCollection", mx.collections.ArrayCollection); }
       try {
       if (flash.net.getClassByAlias("flex.messaging.io.ArrayList") == null){
           flash.net.registerClassAlias("flex.messaging.io.ArrayList", mx.collections.ArrayList);}
       } catch (e:Error) {
           flash.net.registerClassAlias("flex.messaging.io.ArrayList", mx.collections.ArrayList); }
       try {
       if (flash.net.getClassByAlias("flex.messaging.io.ObjectProxy") == null){
           flash.net.registerClassAlias("flex.messaging.io.ObjectProxy", mx.utils.ObjectProxy);}
       } catch (e:Error) {
           flash.net.registerClassAlias("flex.messaging.io.ObjectProxy", mx.utils.ObjectProxy); }
       var styleNames:Array = ["lineHeight", "unfocusedTextSelectionColor", "kerning", "textRollOverColor", "digitCase", "inactiveTextSelectionColor", "textDecoration", "justificationRule", "dominantBaseline", "fontThickness", "trackingRight", "blockProgression", "leadingModel", "textAlignLast", "textAlpha", "letterSpacing", "chromeColor", "rollOverColor", "fontSize", "baselineShift", "focusedTextSelectionColor", "paragraphEndIndent", "fontWeight", "breakOpportunity", "leading", "symbolColor", "renderingMode", "barColor", "fontSharpness", "modalTransparencyDuration", "paragraphStartIndent", "layoutDirection", "justificationStyle", "footerColors", "contentBackgroundColor", "paragraphSpaceAfter", "contentBackgroundAlpha", "fontAntiAliasType", "textRotation", "errorColor", "cffHinting", "direction", "locale", "backgroundDisabledColor", "digitWidth", "modalTransparencyColor", "ligatureLevel", "firstBaselineOffset", "textIndent", "themeColor", "modalTransparency", "tabStops", "fontLookup", "paragraphSpaceBefore", "headerColors", "textAlign", "fontFamily", "textSelectedColor", "lineThrough", "whiteSpaceCollapse", "fontGridFitType", "alignmentBaseline", "trackingLeft", "fontStyle", "dropShadowColor", "accentColor", "selectionColor", "disabledColor", "modalTransparencyBlur", "focusColor", "textJustify", "color", "alternatingItemColors", "typographicCase"];

       for (var i:int = 0; i < styleNames.length; i++)
       {
          styleManager.registerInheritingStyle(styleNames[i]);
       }
   }
}  // FlexInit
}  // package
