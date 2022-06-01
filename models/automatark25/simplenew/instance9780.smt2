(declare-const X String)
; /gate\u{2e}php\u{3f}reg=[a-zA-Z]{15}/U
(assert (not (str.in_re X (re.++ (str.to_re "/gate.php?reg=") ((_ re.loop 15 15) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re "/U\u{a}")))))
(check-sat)
