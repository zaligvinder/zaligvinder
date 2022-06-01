(declare-const X String)
; /^\s+$|^$/gi
(assert (not (str.in_re X (re.union (re.++ (str.to_re "/") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (str.to_re "/gi\u{a}")))))
(check-sat)
