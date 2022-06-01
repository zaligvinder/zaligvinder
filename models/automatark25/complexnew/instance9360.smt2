(declare-const X String)
; Days\s+HWAE\s+Host\u{3A}Portawww\.thecommunicator\.net
(assert (not (str.in_re X (re.++ (str.to_re "Days") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "HWAE") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:Portawww.thecommunicator.net\u{a}")))))
; InformationHost\u{3A}badurl\u{2E}grandstreetinteractive\u{2E}com
(assert (str.in_re X (str.to_re "InformationHost:badurl.grandstreetinteractive.com\u{a}")))
; corep\u{2E}dmcast\u{2E}com[^\n\r]*Referer\u{3a}.*is[^\n\r]*KeyloggerExplorerfileserverSI\|Server\|www\u{2E}myarmory\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "corep.dmcast.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "Referer:") (re.* re.allchar) (str.to_re "is") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "KeyloggerExplorerfileserverSI|Server|\u{13}www.myarmory.com\u{a}")))))
(check-sat)
