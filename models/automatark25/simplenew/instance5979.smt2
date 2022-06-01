(declare-const X String)
; ^[ \t]+|[ \t]+$
(assert (str.in_re X (re.union (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}"))) (re.++ (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}"))) (str.to_re "\u{a}")))))
(check-sat)
