package 
{

import mx.resources.ResourceBundle;

[ExcludeClass]

public class zh_CN$validators_properties extends ResourceBundle
{

    public function zh_CN$validators_properties()
    {
		 super("zh_CN", "validators");
    }

    override protected function getContent():Object
    {
        var content:Object =
        {
            "PAttributeMissing": "指定 source 属性时必须指定 property 属性。",
            "wrongLengthErrorDV": "请以正确格式键入日期。",
            "maxLength": "NaN",
            "invalidDomainErrorZCV": "域参数无效。必须是“仅限中国”。",
            "creditCardValidatorAllowedFormatChars": " -",
            "wrongFormatError": "社会保险号必须为 9 位数或采用 NNN-NN-NNNN 形式。",
            "invalidNumberError": "信用卡号无效。",
            "CNSAttribute": "cardNumberSource 属性“{0}”不能是 String 类型。",
            "invalidCharErrorCCV": "信用卡号中的字符无效（仅输入数字）。",
            "thousandsSeparator": ",",
            "minDigitsPNV": "10",
            "wrongLengthErrorPNV": "您的电话号码必须至少包含 {0} 位数。",
            "invalidPeriodsInDomainError": "电子邮件地址中的域有连续句点。",
            "precisionError": "输入的数量在小数点后包含过多的数字。",
            "wrongUSFormatError": "ZIP+4 代码的格式必须为“12345-6789”。",
            "separationError": "千位分隔符后必须紧跟三个数字。",
            "DSAttribute": "daySource 属性“{0}”不能是 String 类型。",
            "zipCodeValidatorDomain": "仅限美国",
            "exceedsMaxErrorCV": "输入的数量过大。",
            "allowNegative": "true",
            "decimalPointCountError": "小数分隔符仅能出现一次。",
            "requiredFieldError": "该域为必填项。",
            "missingPeriodInDomainError": "电子邮件地址中的域缺少句点。",
            "invalidCharError": "输入包含无效字符。",
            "SAttribute": "source 属性“{0}”不能是 String 类型。",
            "wrongCAFormatError": "加拿大邮政编码的格式必须为“A1B 2C3”。",
            "wrongLengthErrorCCV": "信用卡号的数字位数错误。",
            "tooShortError": "该字符串长度小于最小允许长度。其长度必须至少为 {0} 个字符。",
            "decimalSeparator": ".",
            "zeroStartError": "社会保险号无效；数字不能以 000 开头。",
            "invalidFormatChars": "allowedFormatChars 参数无效。不能包含任何数字。",
            "validateAsString": "true",
            "invalidCharErrorZCV": "邮政编码包含无效字符。",
            "exceedsMaxErrorNV": "输入的数字过大。",
            "missingCardNumber": "要验证的值不包含 cardNumber 属性。",
            "CTSAttribute": "cardTypeSource 属性“{0}”不能是 String 类型。",
            "numberValidatorPrecision": "-1",
            "YSAttribute": "yearSource 属性“{0}”不能是 String 类型。",
            "negativeError": "数量不能为负。",
            "fieldNotFound": "未找到“{0}”域。",
            "noNumError": "未指定信用卡号。",
            "SAttributeMissing": "指定 property 属性时必须指定 source 属性。",
            "noTypeError": "未指定信用卡类型或类型无效。",
            "tooManyAtSignsError": "电子邮件地址包含多个 @ 字符。",
            "wrongLengthErrorZCV": "邮政编码必须为 5 位数或 5+4 位数字。",
            "socialSecurityValidatorAllowedFormatChars": " -",
            "wrongYearError": "请输入介于 0 和 9999 之间的一个年份。",
            "minLength": "NaN",
            "missingCardType": "要验证的值不包含 cardType 属性。",
            "noExpressionError": "缺少表达式。",
            "maxValue": "NaN",
            "invalidDomainErrorEV": "电子邮件地址中的域格式不正确。",
            "numberValidatorDomain": "real",
            "minValue": "NaN",
            "missingUsernameError": "电子邮件地址中缺少用户名。",
            "invalidCharErrorEV": "电子邮件地址包含无效字符。",
            "MSAttribute": "monthSource 属性“{0}”不能是 String 类型。",
            "phoneNumberValidatorAllowedFormatChars": "-()+ .",
            "noMatchError": "域无效。",
            "wrongMonthError": "请输入介于 1 和 12 之间的一个月份。",
            "invalidIPDomainError": "电子邮件地址中的 IP 域格式不正确。",
            "dateValidatorAllowedFormatChars": "/- \\.",
            "integerError": "数字必须为整数。",
            "currencyValidatorPrecision": "2",
            "invalidFormatCharsZCV": "allowedFormatChars 参数无效。不允许使用字母与数字字符 (a-z A-Z 0-9)。",
            "formatError": "配置错误：格式字符串不正确。",
            "wrongDayError": "请输入月份中的一个有效日期。",
            "lowerThanMinError": "输入的数量过小。",
            "zipCodeValidatorAllowedFormatChars": " -",
            "invalidCharErrorPNV": "电话号码包含无效字符。",
            "invalidCharErrorDV": "日期包含无效字符。",
            "missingAtSignError": "电子邮件地址中缺少 at 号 (@)。",
            "invalidFormatCharsError": "其中一个格式参数无效。",
            "wrongTypeError": "指定的卡类型不正确。",
            "tooLongError": "该字符串长度超出最大允许长度。其长度必须小于 {0} 个字符。",
            "currencySymbolError": "货币符号所在的位置无效。",
            "invalidCharErrorSSV": "在社会保险号中输入了无效字符。"
        };
        return content;
    }
}



}
