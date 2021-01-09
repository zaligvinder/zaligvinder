(declare-const X String)
; IP.*encoder\d+SAHPORT-User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "IP") (re.* re.allchar) (str.to.re "encoder") (re.+ (re.range "0" "9")) (str.to.re "SAHPORT-User-Agent:\x0a")))))
; www\x2Edotcomtoolbar\x2Ecom\d+DesktopAddressIDENTIFY
(assert (not (str.in.re X (re.++ (str.to.re "www.dotcomtoolbar.com") (re.+ (re.range "0" "9")) (str.to.re "DesktopAddressIDENTIFY\x0a")))))
; www\.thecommunicator\.net[^\n\r]*iufilfwulmfi\x2friuf\.lio
(assert (not (str.in.re X (re.++ (str.to.re "www.thecommunicator.net") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "iufilfwulmfi/riuf.lio\x0a")))))
; OSSProxy\d+X-Mailer\x3Abacktrust\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "OSSProxy") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13backtrust.com\x0a")))))
(check-sat)
