(set-logic ALL)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)



(assert (str.in_re x (re.* (re.union (str.to_re "a") (str.to_re "b") ) ) ) )

(assert (= 3 (str.len x) ) )

(assert (not (= x "abb" ) ) )
(assert (not (= x "aba" ) ) )
(assert (not (= x "bba" ) ) )
(assert (not (= x "bbb" ) ) )
(assert (not (= x "baa" ) ) )
(assert (not (= x "bab" ) ) )
(assert (not (= x "aaa" ) ) )





(check-sat)
(get-model)

