(set-logic QF_S)
(declare-fun B () String)
(declare-fun A () String)
(declare-fun C () String)
(assert (= (str.++  A A)  (str.++  B B) ))
(assert (= (str.++  C A)  (str.++  B A) ))
(assert (= (str.++  B B)  (str.++  B "a" "") ))
(assert (= (str.++  C C)  (str.++  B A) ))
(assert (= (str.++  C "a" "")  (str.++  B B) ))
(assert (= (str.++  A C)  (str.++  B "a" "") ))
(assert (= (str.++  C A)  (str.++  B C) ))
(assert (= (str.++  "a" A)  (str.++  "a" B) ))
(assert (= (str.++  C A)  (str.++  A B) ))
(assert (= (str.++  A "a" "")  (str.++  B B) ))
(assert (= (str.++  A C)  (str.++  A B) ))
(assert (= (str.++  A C)  (str.++  B B) ))
(assert (= (str.++  C C)  (str.++  B B) ))
(assert (= (str.++  A C)  (str.++  B B) ))
(assert (= (str.++  A A)  (str.++  B B) ))
(assert (= (str.++  A A)  (str.++  B "a" "") ))
(assert (= (str.++  C A)  (str.++  B A) ))
(assert (= (str.++  A A)  (str.++  A B) ))
(assert (= (str.++  C A)  (str.++  B B) ))
(assert (= (str.++  A A)  (str.++  A A) ))
(assert (= (str.++  A "a" "")  (str.++  A "a" "") ))
(assert (= (str.++  A C)  (str.++  "a" A) ))
(assert (= (str.++  A A)  (str.++  B C) ))
(assert (= (str.++  A B)  (str.++  C B) ))
(assert (= (str.++  C A)  (str.++  A B) ))
(assert (= (str.++  "a" A)  (str.++  B B) ))
(assert (= (str.++  A C)  (str.++  A B) ))
(assert (= (str.++  A A)  (str.++  B A) ))
(assert (= (str.++  A A)  (str.++  C A) ))
(assert (= (str.++  A C)  (str.++  B B) ))
(assert (= (str.++  A A)  (str.++  "a" A) ))
(assert (= (str.++  B C)  (str.++  B C) ))
(assert (= (str.++  A A)  (str.++  A B) ))
(assert (= (str.++  A A)  (str.++  B B) ))
(assert (= (str.++  C "a" "")  (str.++  B A) ))
(assert (= (str.++  B B)  (str.++  B "a" "") ))
(assert (= (str.++  A A)  (str.++  "a" A) ))
(assert (= (str.++  A A)  (str.++  B B) ))
(assert (= (str.++  A A)  (str.++  A B) ))
(assert (= (str.++  "a" A)  (str.++  A B) ))
(assert (= (str.++  A A)  (str.++  A B) ))
(assert (= (str.++  "a" C)  (str.++  A B) ))
(assert (= (str.++  C B)  (str.++  "a" B) ))
(assert (= (str.++  A C)  (str.++  B A) ))
(assert (= (str.++  "a" A)  (str.++  "a" B) ))
(assert (= (str.++  A A)  (str.++  B B) ))
(assert (= (str.++  A B)  (str.++  A A) ))
(assert (= (str.++  A C)  (str.++  B B) ))
(assert (= (str.++  C C)  (str.++  B A) ))
(assert (= (str.++  B A)  (str.++  A B) ))
(assert (= (str.++  A B)  (str.++  B A) ))
(assert (= (str.++  C A)  (str.++  C "a" "") ))
(assert (= (str.++  C A)  (str.++  B B) ))
(assert (= (str.++  B A)  (str.++  A B) ))
(assert (= (str.++  "a" A)  (str.++  B "a" "") ))
(assert (= (str.++  B A)  (str.++  A B) ))
(assert (= (str.++  "a" A)  (str.++  B C) ))
(assert (= (str.++  A B)  (str.++  C "a" "") ))
(assert (= (str.++  A A)  (str.++  B B) ))
(assert (= (str.++  "a" A)  (str.++  A A) ))
(assert (= (str.++  "a" C)  (str.++  A C) ))
(assert (= (str.++  C C)  (str.++  A B) ))
(assert (= (str.++  B C)  (str.++  C A) ))
(assert (= (str.++  C C)  (str.++  B "a" "") ))
(assert (= (str.++  C "a" "")  (str.++  B B) ))
(assert (= (str.++  A A)  (str.++  B A) ))
(assert (= (str.++  A B)  (str.++  B B) ))
(assert (= (str.++  C A)  (str.++  C B) ))
(assert (= (str.++  C B)  (str.++  B B) ))
(assert (= (str.++  "a" A)  (str.++  A B) ))
(assert (= (str.++  A A)  (str.++  B "a" "") ))
(assert (= (str.++  A A)  (str.++  B B) ))
(assert (= (str.++  A A)  (str.++  B "a" "") ))
(check-sat)
(get-model)
