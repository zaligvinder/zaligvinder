(declare-const X String)
; corep\u{2E}dmcast\u{2E}com[^\n\r]*Referer\u{3a}.*is[^\n\r]*KeyloggerExplorerfileserverSI\|Server\|www\u{2E}myarmory\u{2E}com
(assert (str.in_re X (re.++ (str.to_re "corep.dmcast.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Referer:") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "KeyloggerExplorerfileserverSI|Server|\u{13}www.myarmory.com\u{a}"))))
; /filename=[^\n]*\u{2e}xml/i
(assert (str.in_re X (re.++ (str.to_re "/filename=") (re.* (re.comp (str.to_re "\u{a}"))) (str.to_re ".xml/i\u{a}"))))
; (DK-?)?([0-9]{2}\ ?){3}[0-9]{2}
(assert (not (str.in_re X (re.++ (re.opt (re.++ (str.to_re "DK") (re.opt (str.to_re "-")))) ((_ re.loop 3 3) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to_re " ")))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "\u{a}")))))
(check-sat)
