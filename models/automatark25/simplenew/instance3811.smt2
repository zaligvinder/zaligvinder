(declare-const X String)
; comLOGUser-Agent\x3Aistsvcwww\x2Eoemji\x2EcomSystemSleuth
(assert (str.in.re X (str.to.re "comLOGUser-Agent:istsvcwww.oemji.comSystemSleuth\x13\x0a")))
(check-sat)
