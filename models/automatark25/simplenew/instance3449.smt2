(declare-const X String)
; /^GET\s\u{2f}[A-F0-9]{152}/m
(assert (not (str.in_re X (re.++ (str.to_re "/GET") (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")) (str.to_re "/") ((_ re.loop 152 152) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to_re "/m\u{a}")))))
(check-sat)
