(declare-const X String)
; \x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax
(assert (not (str.in.re X (str.to.re "\x03\x00\x1c\x00\x00\x00\x00\x00\x01Furax\x0a"))))
; that.*CodeguruBrowser.*CasinoBladeisInsideupdate\.cgiHost\x3A
(assert (str.in.re X (re.++ (str.to.re "that") (re.* re.allchar) (str.to.re "CodeguruBrowser") (re.* re.allchar) (str.to.re "CasinoBladeisInsideupdate.cgiHost:\x0a"))))
; \x18\x16\dsearch\x2econduit\x2ecom\x3Clogs\x40logs\x2Ecom\x3E
(assert (str.in.re X (re.++ (str.to.re "\x18\x16") (re.range "0" "9") (str.to.re "search.conduit.com<logs@logs.com>\x0a"))))
(check-sat)
