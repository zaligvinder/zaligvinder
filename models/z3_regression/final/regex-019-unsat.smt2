(set-logic ALL)
(set-info :status unsat)
(declare-const x String)
(declare-const y String)


(assert (str.in_re x (re.* (str.to_re ".") ) ) ) 

(assert (= 5 (str.len x)))

(assert (not (= x ".....")))




(check-sat)
(get-model)

