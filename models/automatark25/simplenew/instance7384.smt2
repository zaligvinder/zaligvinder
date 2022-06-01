(declare-const X String)
; SI\|Server\|\s+OSSProxy\u{5C}home\/lordofsearch%3fAuthorization\u{3a}
(assert (not (str.in_re X (re.++ (str.to_re "SI|Server|\u{13}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "OSSProxy\u{5c}home/lordofsearch%3fAuthorization:\u{a}")))))
(check-sat)
