(declare-const X String)
; -i%3fUser-Agent\x3Awww\x2eproventactics\x2ecom
(assert (str.in.re X (str.to.re "-i%3fUser-Agent:www.proventactics.com\x0a")))
(check-sat)
