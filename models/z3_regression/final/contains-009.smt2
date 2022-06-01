(set-logic ALL)
(set-info :status sat)
(declare-const x String)
(declare-const bv Bool)

(assert (= bv (str.contains "abcdefg" x ) ) )
(assert (not bv) )


(check-sat)
(get-model)
