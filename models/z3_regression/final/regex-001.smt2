(set-logic ALL)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (= x ""))
(assert (str.in_re x (re.* (str.to_re "ced") ) ) ) 

(check-sat)
(get-model)

