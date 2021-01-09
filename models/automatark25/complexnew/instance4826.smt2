(declare-const X String)
; Host\x3aSoftwareHost\x3AjokeWEBCAM-Server\x3a
(assert (not (str.in.re X (str.to.re "Host:SoftwareHost:jokeWEBCAM-Server:\x0a"))))
; \x2Fcommunicatortb[^\n\r]*\x2FGR.*Reportinfowhenu\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "/communicatortb") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "/GR") (re.* re.allchar) (str.to.re "Reportinfowhenu.com\x13\x0a"))))
; /^number=[0-9A-F]{32}$/mC
(assert (str.in.re X (re.++ (str.to.re "/number=") ((_ re.loop 32 32) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/mC\x0a"))))
(check-sat)
