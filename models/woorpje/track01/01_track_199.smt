(set-logic QF_S)
(declare-fun I () String)
(declare-fun K () String)
(declare-fun N () String)
(declare-fun M () String)
(assert (= (str.++  K M "a" N "aaaaa")  (str.++  M I "aaaaaa" M "aa" M "aa" M M M "aaaa" M "aa" M M M M "a") ))
(check-sat)
(get-model)
