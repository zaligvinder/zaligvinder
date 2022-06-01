(declare-const X String)
; /^[oz]/Ri
(assert (not (str.in_re X (re.++ (str.to_re "/") (re.union (str.to_re "o") (str.to_re "z")) (str.to_re "/Ri\u{a}")))))
; /\/([0-9][0-9a-z]{2}|[0-9a-z][0-9][0-9a-z]|[0-9a-z]{2}[0-9])\.jar$/U
(assert (not (str.in_re X (re.++ (str.to_re "//") (re.union (re.++ (re.range "0" "9") ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "z")))) (re.++ (re.union (re.range "0" "9") (re.range "a" "z")) (re.range "0" "9") (re.union (re.range "0" "9") (re.range "a" "z"))) (re.++ ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "a" "z"))) (re.range "0" "9"))) (str.to_re ".jar/U\u{a}")))))
; corep\u{2E}dmcast\u{2E}com[^\n\r]*Referer\u{3a}.*is[^\n\r]*KeyloggerExplorerfileserverSI\|Server\|www\u{2E}myarmory\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "corep.dmcast.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Referer:") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "KeyloggerExplorerfileserverSI|Server|\u{13}www.myarmory.com\u{a}")))))
(check-sat)
