(set-logic ALL)
(set-info :status sat)
(declare-const a String)
(declare-const b String)
(declare-const z String)

(assert (= (str.++ "test" a) "testhello"))

(check-sat)
(get-model)