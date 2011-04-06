package 
{

import mx.resources.ResourceBundle;

[ExcludeClass]

public class zh_CN$controls_properties extends ResourceBundle
{

    public function zh_CN$controls_properties()
    {
		 super("zh_CN", "controls");
    }

    override protected function getContent():Object
    {
        var content:Object =
        {
            "undefinedParameter": "CuePoint 参数未定义。",
            "nullURL": "发送到 VideoPlayer.load 的空 URL。",
            "incorrectType": "类型必须为 0、1 或 2。",
            "okLabel": "确定",
            "noLabel": "否",
            "wrongNumParams": "num 参数必须是数字。",
            "wrongDisabled": "停用的必须是数字。",
            "wrongTime": "time 必须是数字。",
            "dayNamesShortest": "日,一,二,三,四,五,六",
            "wrongType": "type 必须是数字。",
            "firstDayOfWeek": "0",
            "requiredField": "必填字段",
            "rootNotSMIL": "URL：“{0}”根节点不是 smil：“{1}”。",
            "errorMessages": "无法连接到服务器或无法在服务器上查找 FLV。,未找到匹配的提示点。,提示点非法。,查找无效。,contentPath 无效。,XML 无效。,比特率不匹配；必须为非默认的 FLV。,无法删除默认的 VideoPlayer。",
            "unexpectedEnd": "cuePoint 参数字符串意外结束。",
            "rootNotFound": "URL：“{0}”未找到根节点；如果文件是 flv，则必须具有 .flv 扩展名。",
            "errWrongContainer": "错误：“{0}”的 dataProvider 不能包含 flash.display.DisplayObject 类型的对象。",
            "invalidCall": "无法对 http 连接调用重新连接。",
            "cancelLabel": "取消",
            "errWrongType": "错误：“{0}”的 dataProvider 必须为 String、ViewStack、Array 或 IList。",
            "badArgs": "_play 的参数无效。",
            "missingRoot": "URL：“{0}”未找到根节点；如果 URL 对应于 FLV，则必须具有 .flv 扩展名，且不能带任何参数。",
            "notLoadable": "无法加载“{0}”。",
            "wrongName": "name 不能为未定义的或者为空。",
            "wrongTimeName": "time 必须是数字并且/或者 name 不能为未定义的或者为空。",
            "yesLabel": "是",
            "undefinedArray": "CuePoint.array 未定义。",
            "missingProxy": "URL：“{0}”fpad xml 需要 proxy 标签。",
            "unknownInput": "inputType“{0}”未知。",
            "missingAttributeSrc": "URL：“{1}”标签中需要“{0}”属性 src。",
            "yearSymbol": "年",
            "wrongIndex": "CuePoint.index 必须是 -1 到 cuePoint.array.length 之间的数字。",
            "notImplemented": "“{0}”尚未执行。",
            "label": "正在加载 %3%%",
            "wrongFormat": "意外的 cuePoint 参数格式。",
            "tagNotFound": "URL：“{0}”至少需要一个 ref 标签的视频。",
            "unsupportedMode": "IMEMode“{0}”不被支持。",
            "cannotDisable": "无法停用 actionscript 提示点。",
            "missingAttributes": "URL：“{0}”标签“{1}”需要属性 ID、宽度和高度。宽度和高度必须是大于或等于 0 的数字。",
            "notfpad": "URL：“{0}”根节点不是 fpad。"
        };
        return content;
    }
}



}
