(declare-const X String)
; Anal\s+news.*User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "Anal") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "news") (re.* re.allchar) (str.to_re "User-Agent:\u{a}")))))
; ^\{(.+)|^\\(.+)|(\}*)
(assert (str.in_re X (re.union (re.++ (str.to_re "{") (re.+ re.allchar)) (re.++ (str.to_re "\u{5c}") (re.+ re.allchar)) (re.++ (re.* (str.to_re "}")) (str.to_re "\u{a}")))))
(check-sat)
