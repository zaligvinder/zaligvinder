(set-logic ALL)
(set-info :status sat)
(declare-const x String)
(declare-const y String)


(assert (str.in_re x (re.* (re.++ (re.* (str.to_re "a") ) (str.to_re "b") ))))

(assert (= (str.len x) 3))

(assert (not (= x "abb") ) )
(assert (not (= x "bab") ) )
(assert (not (= x "aab") ) )



(check-sat)
(get-model)

