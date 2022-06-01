(declare-const X String)
; NetControl\u{2E}ServerNetTrackerSiLENTHost\u{3A}
(assert (str.in_re X (str.to_re "NetControl.Server\u{13}NetTrackerSiLENTHost:\u{a}")))
; \d[\d\,\.]+
(assert (not (str.in_re X (re.++ (re.range "0" "9") (re.+ (re.union (re.range "0" "9") (str.to_re ",") (str.to_re "."))) (str.to_re "\u{a}")))))
; c\.goclick\.com[^\n\r]*is\s+URLBlaze
(assert (str.in_re X (re.++ (str.to_re "c.goclick.com") (re.* (re.union (str.to_re "\u{a}") (str.to_re "\u{d}"))) (str.to_re "is") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "URLBlaze\u{a}"))))
(check-sat)
