(declare-const X String)
; /&q=[a-f0-9]{32},[a-f0-9]{16}&kgs=/U
(assert (not (str.in.re X (re.++ (str.to.re "/&q=") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ",") ((_ re.loop 16 16) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "&kgs=/U\x0a")))))
(check-sat)
