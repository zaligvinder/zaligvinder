(declare-const X String)
; Shell\x2FFileage\x7D\x7BPort\x3Aupd\x2Elop\x2Ecom
(assert (not (str.in.re X (str.to.re "Shell/Fileage}{Port:upd.lop.com\x0a"))))
; /filename=[^\n]*\x2ejp2/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jp2/i\x0a"))))
(check-sat)
