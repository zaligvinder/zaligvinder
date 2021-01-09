(declare-const X String)
; cash loans, long term loans, unsecured loans, 12 month loans, bad credit loans,
(assert (not (str.in.re X (str.to.re "cash loans, long term loans, unsecured loans, 12 month loans, bad credit loans,\x0a"))))
; Subject\x3A[^\n\r]*Arrow[^\n\r]*whenu\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Arrow") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "whenu.com\x13\x0a")))))
; /filename=[^\n]*\x2ek3g/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".k3g/i\x0a")))))
; www\x2Eserverlogic3\x2Ecom\d+ToolBar\s+HWAEUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "www.serverlogic3.com") (re.+ (re.range "0" "9")) (str.to.re "ToolBar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "HWAEUser-Agent:\x0a")))))
; /^[a-z]\x3D[0-9a-z]{100}$/Pm
(assert (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (str.to.re "=") ((_ re.loop 100 100) (re.union (re.range "0" "9") (re.range "a" "z"))) (str.to.re "/Pm\x0a"))))
(check-sat)
