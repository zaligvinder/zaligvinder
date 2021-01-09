(declare-const X String)
; ^[0-9](\.[0-9]+)?$
(assert (not (str.in.re X (re.++ (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; corep\x2Edmcast\x2Ecom[^\n\r]*Referer\x3a.*is[^\n\r]*KeyloggerExplorerfileserverSI\|Server\|www\x2Emyarmory\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "corep.dmcast.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Referer:") (re.* re.allchar) (str.to.re "is") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "KeyloggerExplorerfileserverSI|Server|\x13www.myarmory.com\x0a")))))
; /\x2eses([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.ses") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /\x2f\x3fdp\x3d[A-Z0-9]{50}&cb\x3d[0-9]{9}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//?dp=") ((_ re.loop 50 50) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "&cb=") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
(check-sat)
