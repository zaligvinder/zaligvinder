(set-logic QF_S)
(set-info :status sat)
(set-option :auto-config true)
(set-option :produce-models true)

(declare-const a String)
(declare-const b String)
(declare-const z String)

(assert (= (str.++ a b) "testhello"))
(assert (= a "testhe"))

(check-sat)
(get-model)