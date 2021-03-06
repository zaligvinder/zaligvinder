(set-logic QF_S)
(declare-fun B () String)
(declare-fun A () String)
(declare-fun C () String)
(declare-fun D () String)
(assert (= (str.++  "c" C)  (str.++  "c" D) ))
(assert (= (str.++  A "a" "")  (str.++  A "a" "") ))
(assert (= (str.++  "ba" "")  (str.++  D "a" "") ))
(assert (= (str.++  A A)  (str.++  "cc" "") ))
(assert (= (str.++  "a" A)  (str.++  "ac" "") ))
(assert (= (str.++  D A)  (str.++  B A) ))
(assert (= (str.++  "a" B)  (str.++  "a" D) ))
(assert (= (str.++  "a" A)  (str.++  "ac" "") ))
(assert (= (str.++  A D)  (str.++  A D) ))
(assert (= (str.++  "a" B)  (str.++  "ab" "") ))
(assert (= (str.++  "cc" "")  (str.++  "c" A) ))
(assert (= (str.++  C "a" "")  (str.++  D "a" "") ))
(assert (= (str.++  B "c" "")  (str.++  C A) ))
(assert (= (str.++  C "a" "")  (str.++  B "a" "") ))
(assert (= (str.++  "a" C)  (str.++  "a" D) ))
(assert (= (str.++  A C)  (str.++  "cb" "") ))
(assert (= (str.++  "a" A)  (str.++  "ac" "") ))
(assert (= (str.++  B A)  (str.++  C "c" "") ))
(assert (= (str.++  B "a" "")  (str.++  "ba" "") ))
(assert (= (str.++  "ca" "")  (str.++  A "a" "") ))
(assert (= (str.++  D D)  (str.++  C D) ))
(assert (= (str.++  A "c" "")  (str.++  "c" A) ))
(assert (= (str.++  "a" B)  (str.++  "a" D) ))
(assert (= (str.++  B D)  (str.++  D D) ))
(assert (= (str.++  "ac" "")  (str.++  "a" A) ))
(assert (= (str.++  "ba" "")  (str.++  D "a" "") ))
(check-sat)
(get-model)
