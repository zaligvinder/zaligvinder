(declare-const X String)
; Reporter\s+Host\u{3A}.*search\u{2e}conduit\u{2e}comTM_SEARCH3
(assert (str.in_re X (re.++ (str.to_re "Reporter") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:") (re.* re.allchar) (str.to_re "search.conduit.comTM_SEARCH3\u{a}"))))
; [\dA-Za-z]+
(assert (not (str.in_re X (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z"))) (str.to_re "\u{a}")))))
(check-sat)
