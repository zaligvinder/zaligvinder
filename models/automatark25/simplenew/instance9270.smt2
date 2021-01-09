(declare-const X String)
; User-Agent\x3A\x2FrssMinutesansweras\x2Estarware\x2EcomFictionalHost\x3AHost\x3A
(assert (str.in.re X (str.to.re "User-Agent:/rssMinutesansweras.starware.comFictionalHost:Host:\x0a")))
(check-sat)
