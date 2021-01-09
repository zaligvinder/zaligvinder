(declare-const X String)
; HWPEMycount\x2Eyok\x2Ecom
(assert (not (str.in.re X (str.to.re "HWPEMycount.yok.com\x0a"))))
(check-sat)
