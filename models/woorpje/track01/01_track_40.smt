(set-logic QF_S)
(declare-fun B () String)
(declare-fun D () String)
(declare-fun E () String)
(assert (= (str.++  "aibejbhifjegjacgd" B E "jfbjefjbddhdbaejegdigdbg")  (str.++  "aibejbhifjegjacgdbihfe" D "efjbddhdbaejegdigdbg") ))
(check-sat)
(get-model)
