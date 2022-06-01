(declare-const X String)
; Host\u{3A}Informationwww\u{2E}zhongsou\u{2E}comLitequick\u{2E}qsrch\u{2E}com
(assert (str.in_re X (str.to_re "Host:Informationwww.zhongsou.comLitequick.qsrch.com\u{a}")))
; Subject\u{3A}KeyloggerSAHHost\u{3A}Surveillancenotification\u{2F}download\u{2F}toolbar\u{2F}locatorstoolbar
(assert (not (str.in_re X (str.to_re "Subject:KeyloggerSAHHost:Surveillance\u{13}notification\u{13}/download/toolbar/locatorstoolbar\u{a}"))))
(check-sat)
