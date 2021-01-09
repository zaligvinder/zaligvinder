(declare-const X String)
; Host\x3AInformationwww\x2Ezhongsou\x2EcomLitequick\x2Eqsrch\x2Ecom
(assert (str.in.re X (str.to.re "Host:Informationwww.zhongsou.comLitequick.qsrch.com\x0a")))
; Subject\x3AKeyloggerSAHHost\x3ASurveillancenotification\x2Fdownload\x2Ftoolbar\x2Flocatorstoolbar
(assert (not (str.in.re X (str.to.re "Subject:KeyloggerSAHHost:Surveillance\x13notification\x13/download/toolbar/locatorstoolbar\x0a"))))
(check-sat)
