(declare-const X String)
; [0-9.\-/+() ]{4,}
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 4 4) (re.union (re.range "0" "9") (str.to.re ".") (str.to.re "-") (str.to.re "/") (str.to.re "+") (str.to.re "(") (str.to.re ")") (str.to.re " "))) (re.* (re.union (re.range "0" "9") (str.to.re ".") (str.to.re "-") (str.to.re "/") (str.to.re "+") (str.to.re "(") (str.to.re ")") (str.to.re " "))))))
; /filename=[^\n]*\x2edbp/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dbp/i\x0a"))))
; corep\x2Edmcast\x2Ecom[^\n\r]*Referer\x3a.*is[^\n\r]*KeyloggerExplorerfileserverSI\|Server\|www\x2Emyarmory\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "corep.dmcast.com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Referer:") (re.* re.allchar) (str.to.re "is") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "KeyloggerExplorerfileserverSI|Server|\x13www.myarmory.com\x0a"))))
; ^(\d*\s*\-?\s*\d*)$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.range "0" "9")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* (re.range "0" "9"))))))
(check-sat)
