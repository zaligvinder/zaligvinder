(set-logic ALL)
(set-info :status sat)
(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (=  "testnumnum" (str.++ y (str.++ "num" x) ) ) )

(check-sat)
(get-model)