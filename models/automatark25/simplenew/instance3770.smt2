(declare-const X String)
; Referer\x3Awww\x2Eccnnlc\x2Ecom\x04\x00User-Agent\x3A\x22The
(assert (str.in.re X (str.to.re "Referer:www.ccnnlc.com\x13\x04\x00User-Agent:\x22The\x0a")))
(check-sat)
