(set-logic ALL)

(declare-fun x_7 () String)
(declare-fun x_10 () String)

(assert (= x_7 (str.replace "HelloWorld" "e" "a")))

(check-sat)
(get-model)
