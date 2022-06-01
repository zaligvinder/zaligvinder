(declare-const X String)
; (\$(([0-9]?)[a-zA-Z]+)([0-9]?))
(assert (str.in_re X (re.++ (str.to_re "\u{a}$") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))))
(check-sat)
