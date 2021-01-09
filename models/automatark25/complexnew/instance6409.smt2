(declare-const X String)
; trackwww\x2Ealfacleaner\x2Ecom
(assert (str.in.re X (str.to.re "trackwww.alfacleaner.com\x0a")))
; vvvjkhmbgnbbw\x2fqbn\x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (str.in.re X (str.to.re "vvvjkhmbgnbbw/qbn\x1b(robert@blackcastlesoft.com)\x0a")))
(check-sat)
