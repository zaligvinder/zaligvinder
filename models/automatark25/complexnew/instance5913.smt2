(declare-const X String)
; \x2Fdesktop\x2FSystemwwwfromToolbartheServer\x3Awww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (str.to.re "/desktop/SystemwwwfromToolbartheServer:www.searchreslt.com\x0a"))))
; /filename=[^\n]*\x2etif/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".tif/i\x0a")))))
; ProAgent\d+X-Mailer\x3Abacktrust\x2EcomReferer\x3aSupreme
(assert (str.in.re X (re.++ (str.to.re "ProAgent") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13backtrust.comReferer:Supreme\x0a"))))
(check-sat)
