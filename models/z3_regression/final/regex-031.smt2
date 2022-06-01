(set-logic ALL)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)

(assert (= (str.++ x y) (str.++ m n) ) )

(assert (str.in_re n (re.* (str.to_re "abc") ) ) )

(assert (> (str.len x) (str.len m) ) )

;(assert (str.in_re x (re.* (re.++ (re.* (str.to_re "a") ) (str.to_re "b") ))))



(check-sat)
(get-model)

