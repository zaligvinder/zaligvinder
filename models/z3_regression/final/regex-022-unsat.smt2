(set-logic ALL)
(set-info :status unsat)
(declare-const x String)
(declare-const y String)


(assert (str.in_re x (re.* (re.++ (re.* (str.to_re "a") ) (str.to_re "b") ))))

(assert (= (str.len x) 2))

(assert (not (= x "bb")))
(assert (not (= x "ab")))


(check-sat)
(get-model)

