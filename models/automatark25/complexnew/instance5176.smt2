(declare-const X String)
; www\u{2E}onetoolbar\u{2E}comcommunity
(assert (not (str.in_re X (str.to_re "www.onetoolbar.comcommunity\u{a}"))))
; (^([0-9]+[.]+[0-9]+)|(0)$)
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.+ (re.range "0" "9")) (re.+ (str.to_re ".")) (re.+ (re.range "0" "9"))) (str.to_re "0")) (str.to_re "\u{a}")))))
; aohobygi\u{2f}zwiw\s+\+The\+password\+is\u{3A}
(assert (str.in_re X (re.++ (str.to_re "aohobygi/zwiw") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "+The+password+is:\u{a}"))))
(check-sat)
