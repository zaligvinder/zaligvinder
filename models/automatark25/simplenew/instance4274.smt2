(declare-const X String)
; FCTB1\stoolbar\.anwb\.nlrichfind\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "FCTB1") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nlrichfind.com\x0a")))))
(check-sat)
