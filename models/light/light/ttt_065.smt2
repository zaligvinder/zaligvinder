(declare-fun d () String)
(declare-fun e () String)
(declare-fun b () String)
(declare-fun a () String)
(declare-fun c () String)
(declare-fun h () String)
(assert (= (str.++ b (str.++ a "h")) (str.++ "g" (str.++ "a" "g"))))
(assert (= (str.++ "c" (str.++ "b" e)) (str.++ a (str.++ e d))))
(assert (= (str.++ "c" (str.++ h c)) (str.++ h (str.++ c "d"))))
(check-sat)
(get-model)