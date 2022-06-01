(declare-const X String)
; freeIPaddrsRunner\+The\+password\+is\u{3A}
(assert (not (str.in_re X (str.to_re "freeIPaddrsRunner+The+password+is:\u{a}"))))
; /outerhtml\s*?\+\=\s*?\u{22}/i
(assert (not (str.in_re X (re.++ (str.to_re "/outerhtml") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "+=") (re.* (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "\u{22}/i\u{a}")))))
; ^\\w*$
(assert (not (str.in_re X (re.++ (str.to_re "\u{5c}") (re.* (str.to_re "w")) (str.to_re "\u{a}")))))
(check-sat)
