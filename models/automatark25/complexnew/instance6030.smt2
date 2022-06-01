(declare-const X String)
; ^([0-1][0-9]|[2][0-3]):([0-5][0-9])$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.range "0" "1") (re.range "0" "9")) (re.++ (str.to_re "2") (re.range "0" "3"))) (str.to_re ":\u{a}") (re.range "0" "5") (re.range "0" "9")))))
; twfofrfzlugq\u{2f}eve\.qdSeconds\-
(assert (str.in_re X (str.to_re "twfofrfzlugq/eve.qdSeconds-\u{a}")))
(check-sat)
