(set-logic ALL)
(set-info :status unsat)
(declare-const x String)


(assert (= (str.len x) 8))
(assert (str.in_re x (re.* (str.to_re "ced") ) ) ) 
(assert (str.in_re x (re.* (str.to_re "abcd") ) ) ) 


(check-sat)
(get-model)

