(set-logic ALL)
(set-info :status unsat)

(declare-const x String)
(declare-const y String)

(assert (= (str.len x) 2))
; (assert (str.in_re x (re.* (re.range "a" "b"))))
(assert (= x y))
(assert (str.in_re y (re.* (re.range "a" "b"))))
(assert (str.prefixof "1" x))

(check-sat)
(get-model)
