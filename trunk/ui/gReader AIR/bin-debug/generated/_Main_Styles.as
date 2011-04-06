
package 
{

import mx.core.IFlexModuleFactory;
import mx.core.mx_internal;
import mx.styles.CSSCondition;
import mx.styles.CSSSelector;
import mx.styles.CSSStyleDeclaration;
import mx.styles.IStyleManager2;
import mx.utils.ObjectUtil;
import mx.skins.spark.BorderSkin;
import mx.skins.spark.ScrollBarDownButtonSkin;
import mx.core.UITextField;
import spark.skins.spark.ButtonSkin;
import spark.components.supportClasses.ListItemDragProxy;
import spark.skins.spark.SkinnableContainerSkin;
import spark.skins.spark.ErrorSkin;
import spark.skins.spark.windowChrome.TitleBarSkin;
import spark.skins.spark.VScrollBarSkin;
import spark.skins.spark.HScrollBarSkin;
import spark.skins.spark.ListSkin;
import spark.skins.spark.TextInputSkin;
import mx.skins.spark.ScrollBarUpButtonSkin;
import spark.skins.spark.ApplicationSkin;
import spark.skins.spark.WindowedApplicationSkin;
import mx.skins.spark.ButtonSkin;
import mx.skins.halo.BusyCursor;
import spark.skins.spark.FocusSkin;
import mx.skins.spark.ScrollBarThumbSkin;
import mx.skins.spark.DefaultButtonSkin;
import mx.skins.spark.PanelBorderSkin;
import mx.skins.halo.ToolTipBorder;
import mx.skins.spark.ScrollBarTrackSkin;
import spark.skins.spark.DefaultButtonSkin;
import spark.skins.spark.SkinnableDataContainerSkin;
import mx.skins.halo.DefaultDragImage;
import mx.skins.halo.BrokenImageBorderSkin;
import spark.skins.spark.ScrollerSkin;
import spark.skins.spark.PanelSkin;
import mx.skins.halo.HaloFocusRect;
import mx.core.UIComponent;
import mx.skins.spark.ContainerBorderSkin;
import spark.skins.spark.ListDropIndicator;
[ExcludeClass]

public class _Main_Styles
{
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_max_up.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_max_up.png', original='mac_max_up.png', _line='114', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_max_up_png_308545446:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_min_up.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_min_up.png', original='mac_min_up.png', _line='129', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_min_up_png_1065783846:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_restore_down.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_restore_down.png', original='win_restore_down.png', _line='277', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_restore_down_png_1305221286:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/framework.swc$Assets.swf', symbol='__brokenImage', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', _line='1316', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/framework.swc$defaults.css')]
    private static var _embed_css_Assets_swf___brokenImage_552940798:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_restore_up.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_restore_up.png', original='win_restore_up.png', _line='275', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_restore_up_png_196299884:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_close_up.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_close_up.png', original='win_close_up.png', _line='168', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_close_up_png_629258016:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_close_over.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_close_over.png', original='mac_close_over.png', _line='99', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_close_over_png_2142907500:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_close_up.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_close_up.png', original='mac_close_up.png', _line='100', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_close_up_png_524977638:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_min_over.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_min_over.png', original='mac_min_over.png', _line='128', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_min_over_png_1659275144:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_min_dis.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_min_dis.png', original='win_min_dis.png', _line='264', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_min_dis_png_851512174:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_max_dis.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_max_dis.png', original='win_max_dis.png', _line='250', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_max_dis_png_1035476434:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_min_dis.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_min_dis.png', original='mac_min_dis.png', _line='126', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_min_dis_png_698477272:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/framework.swc$Assets.swf', symbol='mx.skins.cursor.DragCopy', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', _line='662', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/framework.swc$defaults.css')]
    private static var _embed_css_Assets_swf_mx_skins_cursor_DragCopy_1984265346:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_min_down.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_min_down.png', original='win_min_down.png', _line='263', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_min_down_png_1186880794:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_min_down.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_min_down.png', original='mac_min_down.png', _line='127', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_min_down_png_1656203564:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/framework.swc$Assets.swf', symbol='mx.skins.cursor.DragMove', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', _line='665', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/framework.swc$defaults.css')]
    private static var _embed_css_Assets_swf_mx_skins_cursor_DragMove_1984026670:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/framework.swc$Assets.swf', symbol='mx.skins.cursor.BusyCursor', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', _line='534', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/framework.swc$defaults.css')]
    private static var _embed_css_Assets_swf_mx_skins_cursor_BusyCursor_56247412:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/framework.swc$Assets.swf', symbol='mx.skins.cursor.DragLink', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', _line='664', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/framework.swc$defaults.css')]
    private static var _embed_css_Assets_swf_mx_skins_cursor_DragLink_1984003093:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_max_over.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_max_over.png', original='mac_max_over.png', _line='113', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_max_over_png_1362253140:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_close_down.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_close_down.png', original='mac_close_down.png', _line='98', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_close_down_png_1318678440:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_max_down.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_max_down.png', original='mac_max_down.png', _line='112', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_max_down_png_1536902240:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_max_dis.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$mac_max_dis.png', original='mac_max_dis.png', _line='111', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_mac_max_dis_png_1027251548:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$gripper_up.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$gripper_up.png', original='gripper_up.png', _line='75', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_gripper_up_png_1704484884:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_max_down.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_max_down.png', original='win_max_down.png', _line='249', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_max_down_png_1840404314:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_close_over.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_close_over.png', original='win_close_over.png', _line='167', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_close_over_png_1357315674:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_min_over.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_min_over.png', original='win_min_over.png', _line='262', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_min_over_png_793134214:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_min_up.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_min_up.png', original='win_min_up.png', _line='261', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_min_up_png_1309138540:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_restore_over.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_restore_over.png', original='win_restore_over.png', _line='276', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_restore_over_png_2000447258:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_max_up.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_max_up.png', original='win_max_up.png', _line='247', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_max_up_png_524591656:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_max_over.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_max_over.png', original='win_max_over.png', _line='248', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_max_over_png_1782157158:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_close_down.png', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$win_close_down.png', original='win_close_down.png', _line='166', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/air/airframework.swc$defaults.css')]
    private static var _embed_css_win_close_down_png_865119462:Class;
    [Embed(_resolvedSource='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/framework.swc$Assets.swf', symbol='mx.skins.cursor.DragReject', source='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/framework.swc$Assets.swf', original='Assets.swf', _line='666', _pathsep='true', _file='D:/Program Files/Adobe/Adobe Flash Builder 4 Plug-in/sdks/4.1.0/frameworks/libs/framework.swc$defaults.css')]
    private static var _embed_css_Assets_swf_mx_skins_cursor_DragReject_643094344:Class;
    public static function init(fbs:IFlexModuleFactory):void
    {
        var styleManager:IStyleManager2 = fbs.getImplementation("mx.styles::IStyleManager2") as IStyleManager2;
        

        var conditions:Array = null;
        var condition:CSSCondition = null;
        var selector:CSSSelector = null;
        var style:CSSStyleDeclaration;
        var effects:Array;
        
        var mergedStyle:CSSStyleDeclaration;

        
        //
        // global
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("global", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("global");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.lineHeight = "120%";
                this.unfocusedTextSelectionColor = 0xe8e8e8;
                this.kerning = "default";
                this.iconColor = 0x111111;
                this.verticalScrollPolicy = "auto";
                this.horizontalAlign = "left";
                this.filled = true;
                this.textDecoration = "none";
                this.columnCount = "auto";
                this.liveDragging = true;
                this.dominantBaseline = "auto";
                this.fontThickness = 0;
                this.focusBlendMode = "normal";
                this.blockProgression = "tb";
                this.buttonColor = 0x6f7777;
                this.indentation = 17;
                this.autoThumbVisibility = true;
                this.textAlignLast = "start";
                this.paddingTop = 0;
                this.textAlpha = 1.0;
                this.chromeColor = 0xcccccc;
                this.rollOverColor = 0xcedbef;
                this.bevel = true;
                this.fontSize = 12;
                this.shadowColor = 0xeeeeee;
                this.columnGap = 20;
                this.paddingLeft = 0;
                this.paragraphEndIndent = 0;
                this.fontWeight = "normal";
                this.indicatorGap = 14;
                this.focusSkin = mx.skins.halo.HaloFocusRect;
                this.breakOpportunity = "auto";
                this.leading = 2;
                this.symbolColor = 0x000000;
                this.renderingMode = "cff";
                this.borderThickness = 1;
                this.paragraphStartIndent = 0;
                this.layoutDirection = "ltr";
                this.contentBackgroundColor = 0xffffff;
                this.backgroundSize = "auto";
                this.paragraphSpaceAfter = 0;
                this.borderColor = 0x696969;
                this.shadowDistance = 2;
                this.stroked = false;
                this.digitWidth = "default";
                this.verticalAlign = "top";
                this.ligatureLevel = "common";
                this.firstBaselineOffset = "auto";
                this.fillAlphas = [0.6, 0.4, 0.75, 0.65];
                this.version = "4.0.0";
                this.shadowDirection = "center";
                this.fontLookup = "embeddedCFF";
                this.lineBreak = "toFit";
                this.openDuration = 0;
                this.repeatInterval = 35;
                this.paragraphSpaceBefore = 0;
                this.fontFamily = "Arial";
                this.paddingBottom = 0;
                this.strokeWidth = 1;
                this.lineThrough = false;
                this.textFieldClass = mx.core.UITextField;
                this.alignmentBaseline = "useDominantBaseline";
                this.trackingLeft = 0;
                this.verticalGridLines = true;
                this.fontStyle = "normal";
                this.dropShadowColor = 0x000000;
                this.accentColor = 0x0099ff;
                this.backgroundImageFillMode = "scale";
                this.selectionColor = 0xa8c6ee;
                this.borderWeight = 1;
                this.focusRoundedCorners = "tl tr bl br";
                this.paddingRight = 0;
                this.borderSides = "left top right bottom";
                this.disabledIconColor = 0x999999;
                this.textJustify = "interWord";
                this.focusColor = 0x70b2ee;
                this.borderVisible = true;
                this.selectionDuration = 250;
                this.typographicCase = "default";
                this.highlightAlphas = [0.3, 0];
                this.fillColor = 0xffffff;
                this.textRollOverColor = 0;
                this.rollOverOpenDelay = 200;
                this.digitCase = "default";
                this.shadowCapColor = 0xd5dddd;
                this.inactiveTextSelectionColor = 0xe8e8e8;
                this.backgroundAlpha = 1.0;
                this.justificationRule = "auto";
                this.roundedBottomCorners = true;
                this.dropShadowVisible = false;
                this.trackingRight = 0;
                this.fillColors = [0xffffff, 0xcccccc, 0xffffff, 0xeeeeee];
                this.horizontalGap = 8;
                this.borderCapColor = 0x919999;
                this.leadingModel = "auto";
                this.selectionDisabledColor = 0xdddddd;
                this.closeDuration = 50;
                this.embedFonts = false;
                this.letterSpacing = 0;
                this.focusAlpha = 0.55;
                this.borderAlpha = 1.0;
                this.baselineShift = 0;
                this.focusedTextSelectionColor = 0xa8c6ee;
                this.borderSkin = mx.skins.spark.BorderSkin;
                this.fontSharpness = 0;
                this.modalTransparencyDuration = 100;
                this.justificationStyle = "auto";
                this.borderStyle = "inset";
                this.contentBackgroundAlpha = 1;
                this.textRotation = "auto";
                this.fontAntiAliasType = "advanced";
                this.errorColor = 0xfe0000;
                this.direction = "ltr";
                this.cffHinting = "horizontalStem";
                this.horizontalGridLineColor = 0xf7f7f7;
                this.locale = "en";
                this.cornerRadius = 2;
                this.modalTransparencyColor = 0xdddddd;
                this.disabledAlpha = 0.5;
                this.textIndent = 0;
                this.verticalGridLineColor = 0xd5dddd;
                this.themeColor = 0x70b2ee;
                this.tabStops = null;
                this.modalTransparency = 0.5;
                this.smoothScrolling = true;
                this.columnWidth = "auto";
                this.textAlign = "start";
                this.horizontalScrollPolicy = "auto";
                this.textSelectedColor = 0;
                this.whiteSpaceCollapse = "collapse";
                this.fontGridFitType = "pixel";
                this.horizontalGridLines = false;
                this.fullScreenHideControlsDelay = 3000;
                this.useRollOver = true;
                this.repeatDelay = 500;
                this.focusThickness = 2;
                this.verticalGap = 6;
                this.disabledColor = 0xaab3b3;
                this.modalTransparencyBlur = 3;
                this.slideDuration = 300;
                this.color = 0x000000;
                this.fixedThumbSize = false;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .dateFieldPopup
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "dateFieldPopup");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".dateFieldPopup");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.backgroundColor = 0xffffff;
                this.dropShadowVisible = true;
                this.borderThickness = 1;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .errorTip
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "errorTip");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".errorTip");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.fontWeight = "bold";
                this.borderStyle = "errorTipRight";
                this.paddingTop = 4;
                this.borderColor = 0xce2929;
                this.color = 0xffffff;
                this.fontSize = 10;
                this.shadowColor = 0x000000;
                this.paddingLeft = 4;
                this.paddingBottom = 4;
                this.paddingRight = 4;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .headerDragProxyStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "headerDragProxyStyle");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".headerDragProxyStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.fontWeight = "bold";
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .swatchPanelTextField
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "swatchPanelTextField");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".swatchPanelTextField");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.borderStyle = "inset";
                this.borderColor = 0xd5dddd;
                this.highlightColor = 0xc4cccc;
                this.backgroundColor = 0xffffff;
                this.shadowCapColor = 0xd5dddd;
                this.shadowColor = 0xd5dddd;
                this.paddingLeft = 5;
                this.buttonColor = 0x6f7777;
                this.borderCapColor = 0x919999;
                this.paddingRight = 5;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .todayStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "todayStyle");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".todayStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.color = 0;
                this.textAlign = "center";
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .weekDayStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "weekDayStyle");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".weekDayStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.fontWeight = "bold";
                this.textAlign = "center";
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .windowStatus
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "windowStatus");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".windowStatus");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.color = 0x666666;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .windowStyles
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "windowStyles");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".windowStyles");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.fontWeight = "bold";
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .gripperSkin
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "gripperSkin");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".gripperSkin");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_gripper_up_png_1704484884;
                this.overSkin = _embed_css_gripper_up_png_1704484884;
                this.downSkin = _embed_css_gripper_up_png_1704484884;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .macCloseButton
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "macCloseButton");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".macCloseButton");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_mac_close_up_png_524977638;
                this.overSkin = _embed_css_mac_close_over_png_2142907500;
                this.downSkin = _embed_css_mac_close_down_png_1318678440;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .macMaxButton
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "macMaxButton");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".macMaxButton");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_mac_max_up_png_308545446;
                this.overSkin = _embed_css_mac_max_over_png_1362253140;
                this.downSkin = _embed_css_mac_max_down_png_1536902240;
                this.disabledSkin = _embed_css_mac_max_dis_png_1027251548;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .macMinButton
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "macMinButton");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".macMinButton");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_mac_min_up_png_1065783846;
                this.overSkin = _embed_css_mac_min_over_png_1659275144;
                this.downSkin = _embed_css_mac_min_down_png_1656203564;
                this.alpha = 0.5;
                this.disabledSkin = _embed_css_mac_min_dis_png_698477272;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .statusTextStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "statusTextStyle");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".statusTextStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.color = 0x585858;
                this.alpha = 0.6;
                this.fontSize = 10;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .titleTextStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "titleTextStyle");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".titleTextStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.color = 0x585858;
                this.alpha = 0.6;
                this.fontSize = 9;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .winCloseButton
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "winCloseButton");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".winCloseButton");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_win_close_up_png_629258016;
                this.overSkin = _embed_css_win_close_over_png_1357315674;
                this.downSkin = _embed_css_win_close_down_png_865119462;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .winMaxButton
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "winMaxButton");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".winMaxButton");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_win_max_up_png_524591656;
                this.downSkin = _embed_css_win_max_down_png_1840404314;
                this.overSkin = _embed_css_win_max_over_png_1782157158;
                this.disabledSkin = _embed_css_win_max_dis_png_1035476434;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .winMinButton
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "winMinButton");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".winMinButton");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_win_min_up_png_1309138540;
                this.downSkin = _embed_css_win_min_down_png_1186880794;
                this.overSkin = _embed_css_win_min_over_png_793134214;
                this.disabledSkin = _embed_css_win_min_dis_png_851512174;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // .winRestoreButton
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "winRestoreButton");
        conditions.push(condition); 
        selector = new CSSSelector("", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration(".winRestoreButton");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.upSkin = _embed_css_win_restore_up_png_196299884;
                this.downSkin = _embed_css_win_restore_down_png_1305221286;
                this.overSkin = _embed_css_win_restore_over_png_2000447258;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.Alert
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.Alert", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.Alert");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.paddingTop = 2;
                this.paddingLeft = 10;
                this.paddingBottom = 10;
                this.paddingRight = 10;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.core.Application
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.core.Application", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.core.Application");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.paddingTop = 24;
                this.backgroundColor = 0xffffff;
                this.horizontalAlign = "center";
                this.paddingLeft = 24;
                this.paddingBottom = 24;
                this.paddingRight = 24;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.Button
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.Button", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.Button");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.textAlign = "center";
                this.labelVerticalOffset = 1;
                this.emphasizedSkin = mx.skins.spark.DefaultButtonSkin;
                this.verticalGap = 2;
                this.horizontalGap = 2;
                this.skin = mx.skins.spark.ButtonSkin;
                this.paddingLeft = 6;
                this.paddingRight = 6;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.core.Container
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.core.Container", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.core.Container");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.borderStyle = "none";
                this.borderSkin = mx.skins.spark.ContainerBorderSkin;
                this.cornerRadius = 0;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.containers.ControlBar
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.containers.ControlBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.ControlBar");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.disabledOverlayAlpha = 0;
                this.borderStyle = "none";
                this.paddingTop = 11;
                this.verticalAlign = "middle";
                this.paddingLeft = 11;
                this.paddingBottom = 11;
                this.paddingRight = 11;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.managers.CursorManager
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.managers.CursorManager", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.managers.CursorManager");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.busyCursor = mx.skins.halo.BusyCursor;
                this.busyCursorBackground = _embed_css_Assets_swf_mx_skins_cursor_BusyCursor_56247412;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.managers.DragManager
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.managers.DragManager", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.managers.DragManager");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.copyCursor = _embed_css_Assets_swf_mx_skins_cursor_DragCopy_1984265346;
                this.moveCursor = _embed_css_Assets_swf_mx_skins_cursor_DragMove_1984026670;
                this.rejectCursor = _embed_css_Assets_swf_mx_skins_cursor_DragReject_643094344;
                this.linkCursor = _embed_css_Assets_swf_mx_skins_cursor_DragLink_1984003093;
                this.defaultDragImageSkin = mx.skins.halo.DefaultDragImage;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.Image
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.Image", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.Image");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.layoutDirection = "ltr";
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.containers.Panel
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.containers.Panel", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.containers.Panel");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.statusStyleName = "windowStatus";
                this.borderStyle = "default";
                this.borderColor = 0;
                this.paddingTop = 0;
                this.backgroundColor = 0xffffff;
                this.cornerRadius = 0;
                this.titleBackgroundSkin = mx.core.UIComponent;
                this.borderAlpha = 0.5;
                this.paddingLeft = 0;
                this.paddingRight = 0;
                this.resizeEndEffect = "Dissolve";
                this.titleStyleName = "windowStyles";
                this.resizeStartEffect = "Dissolve";
                this.dropShadowVisible = true;
                this.borderSkin = mx.skins.spark.PanelBorderSkin;
                this.paddingBottom = 0;
            };
        }

        effects = style.mx_internal::effects;
        if (!effects)
        {
            effects = style.mx_internal::effects = [];
        }
        effects.push("resizeEndEffect");
        effects.push("resizeStartEffect");

        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.scrollClasses.ScrollBar
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.scrollClasses.ScrollBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.scrollClasses.ScrollBar");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.thumbOffset = 0;
                this.paddingTop = 0;
                this.trackSkin = mx.skins.spark.ScrollBarTrackSkin;
                this.downArrowSkin = mx.skins.spark.ScrollBarDownButtonSkin;
                this.upArrowSkin = mx.skins.spark.ScrollBarUpButtonSkin;
                this.paddingLeft = 0;
                this.paddingBottom = 0;
                this.thumbSkin = mx.skins.spark.ScrollBarThumbSkin;
                this.paddingRight = 0;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.core.ScrollControlBase
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.core.ScrollControlBase", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.core.ScrollControlBase");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.borderSkin = mx.skins.spark.BorderSkin;
                this.focusRoundedCorners = " ";
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.SWFLoader
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.SWFLoader", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.SWFLoader");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.brokenImageSkin = _embed_css_Assets_swf___brokenImage_552940798;
                this.brokenImageBorderSkin = mx.skins.halo.BrokenImageBorderSkin;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.HScrollBar.textAreaVScrollBarStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "textAreaVScrollBarStyle");
        conditions.push(condition); 
        selector = new CSSSelector("mx.controls.HScrollBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.HScrollBar.textAreaVScrollBarStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.VScrollBar.textAreaHScrollBarStyle
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "textAreaHScrollBarStyle");
        conditions.push(condition); 
        selector = new CSSSelector("mx.controls.VScrollBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.VScrollBar.textAreaHScrollBarStyle");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.ToolTip
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.ToolTip", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.ToolTip");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.borderStyle = "toolTip";
                this.paddingTop = 2;
                this.borderColor = 0x919999;
                this.backgroundColor = 0xffffcc;
                this.borderSkin = mx.skins.halo.ToolTipBorder;
                this.cornerRadius = 2;
                this.fontSize = 10;
                this.paddingLeft = 4;
                this.paddingBottom = 2;
                this.backgroundAlpha = 0.95;
                this.paddingRight = 4;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.Application
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.Application", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Application");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.backgroundColor = 0xffffff;
                this.skinClass = spark.skins.spark.ApplicationSkin;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.Button
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.Button", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Button");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.skinClass = spark.skins.spark.ButtonSkin;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }

        //
        // spark.components.Button.emphasized
        //
        selector = null;
        conditions = null;
        conditions = [];
        condition = new CSSCondition("class", "emphasized");
        conditions.push(condition); 
        selector = new CSSSelector("spark.components.Button", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Button.emphasized");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.skinClass = spark.skins.spark.DefaultButtonSkin;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.HScrollBar
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.HScrollBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.HScrollBar");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.skinClass = spark.skins.spark.HScrollBarSkin;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.List
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.List", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.List");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.dragIndicatorClass = spark.components.supportClasses.ListItemDragProxy;
                this.skinClass = spark.skins.spark.ListSkin;
                this.dropIndicatorSkin = spark.skins.spark.ListDropIndicator;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.Panel
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.Panel", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Panel");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.borderColor = 0;
                this.backgroundColor = 0xffffff;
                this.skinClass = spark.skins.spark.PanelSkin;
                this.dropShadowVisible = true;
                this.cornerRadius = 0;
                this.borderAlpha = 0.5;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.RichEditableText
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.RichEditableText", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.RichEditableText");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.layoutDirection = "ltr";
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.Scroller
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.Scroller", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Scroller");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.skinClass = spark.skins.spark.ScrollerSkin;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.SkinnableDataContainer
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.SkinnableDataContainer", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.SkinnableDataContainer");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.skinClass = spark.skins.spark.SkinnableDataContainerSkin;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.supportClasses.SkinnableComponent
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.supportClasses.SkinnableComponent", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.supportClasses.SkinnableComponent");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.focusSkin = spark.skins.spark.FocusSkin;
                this.errorSkin = spark.skins.spark.ErrorSkin;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.SkinnableContainer
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.SkinnableContainer", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.SkinnableContainer");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.skinClass = spark.skins.spark.SkinnableContainerSkin;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.supportClasses.TextBase
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.supportClasses.TextBase", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.supportClasses.TextBase");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.layoutDirection = "ltr";
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.TextInput
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.TextInput", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.TextInput");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.paddingTop = 5;
                this.skinClass = spark.skins.spark.TextInputSkin;
                this.paddingLeft = 3;
                this.paddingBottom = 3;
                this.paddingRight = 3;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.VScrollBar
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.VScrollBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.VScrollBar");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.skinClass = spark.skins.spark.VScrollBarSkin;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // mx.controls.HTML
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("mx.controls.HTML", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("mx.controls.HTML");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.borderStyle = "none";
                this.layoutDirection = "ltr";
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.windowClasses.TitleBar
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.windowClasses.TitleBar", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.windowClasses.TitleBar");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.skinClass = spark.skins.spark.windowChrome.TitleBarSkin;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.WindowedApplication
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.WindowedApplication", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.WindowedApplication");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.backgroundColor = 0xffffff;
                this.skinClass = spark.skins.spark.WindowedApplicationSkin;
                this.resizeAffordanceWidth = 6;
                this.backgroundAlpha = 1;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }



        
        //
        // spark.components.Window
        //
        selector = null;
        conditions = null;
        conditions = null;
        selector = new CSSSelector("spark.components.Window", conditions, selector);
        mergedStyle = styleManager.getMergedStyleDeclaration("spark.components.Window");
        style = new CSSStyleDeclaration(selector, styleManager, mergedStyle == null);

        if (style.defaultFactory == null)
        {
            style.defaultFactory = function():void
            {
                this.backgroundColor = 0xffffff;
                this.skinClass = spark.skins.spark.WindowedApplicationSkin;
                this.resizeAffordanceWidth = 6;
                this.backgroundAlpha = 1;
            };
        }


        if (mergedStyle != null && 
            (mergedStyle.defaultFactory == null ||
            ObjectUtil.compare(new style.defaultFactory(), new mergedStyle.defaultFactory())))
        {
            styleManager.setStyleDeclaration(style.mx_internal::selectorString, style, false);
        }


    }
}

}
