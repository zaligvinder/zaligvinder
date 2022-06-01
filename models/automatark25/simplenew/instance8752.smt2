(declare-const X String)
; Yeah\!\s+ulmxct\u{2f}mqoyc\s+securityOmFkbWluADROAR
(assert (not (str.in_re X (re.++ (str.to_re "Yeah!") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "ulmxct/mqoyc") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "securityOmFkbWluADROAR\u{a}")))))
(check-sat)
