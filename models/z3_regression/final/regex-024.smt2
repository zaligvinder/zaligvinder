(set-logic ALL)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (str.in_re x (re.* (re.++ (re.* (str.to_re "a") ) (str.to_re "b") ))))

(assert (str.in_re y (re.* (re.++ (re.* (str.to_re "a") ) (str.to_re "b") ))))

(check-sat)
(get-model)

