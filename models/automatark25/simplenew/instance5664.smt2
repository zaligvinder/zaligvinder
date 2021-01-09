(declare-const X String)
; Shell\x2FFileage\x7D\x7BPort\x3Aupd\x2Elop\x2Ecom
(assert (not (str.in.re X (str.to.re "Shell/Fileage}{Port:upd.lop.com\x0a"))))
(check-sat)
