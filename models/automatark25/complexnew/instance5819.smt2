(declare-const X String)
; \x2Fcommunicatortb[^\n\r]*\x2FGR.*Reportinfowhenu\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "/communicatortb") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "/GR") (re.* re.allchar) (str.to.re "Reportinfowhenu.com\x13\x0a"))))
; /filename=[^\n]*\x2eaom/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".aom/i\x0a")))))
; httphost[^\n\r]*www\x2Emaxifiles\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "httphost") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "www.maxifiles.com\x0a"))))
(check-sat)
