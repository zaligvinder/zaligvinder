(declare-const X String)
; \x2Fcommunicatortb[^\n\r]*\x2FGR.*Reportinfowhenu\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "/communicatortb") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "/GR") (re.* re.allchar) (str.to.re "Reportinfowhenu.com\x13\x0a")))))
(check-sat)
