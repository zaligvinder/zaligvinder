(declare-const X String)
; Host\x3AInformationwww\x2Ezhongsou\x2EcomLitequick\x2Eqsrch\x2Ecom
(assert (not (str.in.re X (str.to.re "Host:Informationwww.zhongsou.comLitequick.qsrch.com\x0a"))))
(check-sat)
