(declare-const X String)
; /^[oz]/Ri
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.union (str.to.re "o") (str.to.re "z")) (str.to.re "/Ri\x0a")))))
; /\/([0-9][0-9a-z]{2}|[0-9a-z][0-9][0-9a-z]|[0-9a-z]{2}[0-9])\.jar$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") (re.union (re.++ (re.range "0" "9") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "z")))) (re.++ (re.union (re.range "0" "9") (re.range "a" "z")) (re.range "0" "9") (re.union (re.range "0" "9") (re.range "a" "z"))) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "z"))) (re.range "0" "9"))) (str.to.re ".jar/U\x0a")))))
; corep\x2Edmcast\x2Ecom[^\n\r]*Referer\x3a.*is[^\n\r]*KeyloggerExplorerfileserverSI\|Server\|www\x2Emyarmory\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "corep.dmcast.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Referer:") (re.* re.allchar) (str.to.re "is") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "KeyloggerExplorerfileserverSI|Server|\x13www.myarmory.com\x0a")))))
(check-sat)
