(set-logic QF_S)
(declare-fun B () String)
(declare-fun F () String)
(assert (= (str.++  "aaaccbabaaccccaabb" B "accaaaacbbbccccbccacacb")  (str.++  "aaacc" F "caaaacbbbccccbccacacb") ))
(check-sat)
(get-model)
