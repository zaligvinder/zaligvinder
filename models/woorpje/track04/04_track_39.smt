(set-logic QF_S)
(declare-fun B () String)
(declare-fun A () String)
(assert (= (str.++  A B B)  (str.++  "aa" B B) ))
(assert (= (str.++  "a" B A)  (str.++  B "a" B "a") ))
(assert (= (str.++  A B "a")  (str.++  A "aa" "") ))
(assert (= (str.++  B "a" B B)  (str.++  "aaa" B) ))
(assert (= (str.++  A A)  (str.++  B B B "a") ))
(assert (= (str.++  "a" B A)  (str.++  "a" B "aa") ))
(assert (= (str.++  A A)  (str.++  B A "a") ))
(assert (= (str.++  A "a" B)  (str.++  "a" B B B) ))
(assert (= (str.++  "aa" A)  (str.++  "aaa" B) ))
(assert (= (str.++  B "aa" B)  (str.++  B B A) ))
(assert (= (str.++  A A)  (str.++  A "a" B) ))
(assert (= (str.++  "a" B A)  (str.++  B "a" B "a") ))
(assert (= (str.++  "aa" A)  (str.++  A B "a") ))
(assert (= (str.++  A A)  (str.++  A "a" B) ))
(assert (= (str.++  B B A)  (str.++  B "aaa" "") ))
(assert (= (str.++  "a" B A)  (str.++  B "a" B "a") ))
(assert (= (str.++  A A)  (str.++  A B "a") ))
(assert (= (str.++  "a" B A)  (str.++  B B A) ))
(assert (= (str.++  A A)  (str.++  B "aaa" "") ))
(assert (= (str.++  "a" B B B)  (str.++  "a" B A) ))
(assert (= (str.++  A B B)  (str.++  "aaaa" "") ))
(assert (= (str.++  A A)  (str.++  "aa" A) ))
(assert (= (str.++  A "a" B)  (str.++  A "aa" "") ))
(assert (= (str.++  A A)  (str.++  B "a" B "a") ))
(assert (= (str.++  A A)  (str.++  "a" B B "a") ))
(assert (= (str.++  A A)  (str.++  "a" B B "a") ))
(assert (= (str.++  A B "a")  (str.++  "a" B "aa") ))
(assert (= (str.++  A A)  (str.++  B B "a" B) ))
(assert (= (str.++  A "a" B)  (str.++  "a" B "a" B) ))
(assert (= (str.++  A A)  (str.++  B B A) ))
(assert (= (str.++  A B B)  (str.++  B B B "a") ))
(assert (= (str.++  "aaa" B)  (str.++  A B B) ))
(assert (= (str.++  B B B "a")  (str.++  A B "a") ))
(assert (= (str.++  "a" B B B)  (str.++  "aa" B B) ))
(assert (= (str.++  B B "a" B)  (str.++  B "a" B "a") ))
(assert (= (str.++  "a" B A)  (str.++  B B "a" B) ))
(assert (= (str.++  A A)  (str.++  B B "aa") ))
(assert (= (str.++  "a" B B "a")  (str.++  A "a" B) ))
(assert (= (str.++  B B A)  (str.++  "a" B B B) ))
(assert (= (str.++  A A)  (str.++  B A B) ))
(assert (= (str.++  "aa" A)  (str.++  A "a" B) ))
(assert (= (str.++  B "a" A)  (str.++  B "a" B B) ))
(assert (= (str.++  B "a" A)  (str.++  B B B "a") ))
(assert (= (str.++  B "a" B B)  (str.++  B "a" B B) ))
(assert (= (str.++  A "a" B)  (str.++  B B B B) ))
(assert (= (str.++  "a" B B B)  (str.++  A B B) ))
(assert (= (str.++  B "aaa" "")  (str.++  B B B "a") ))
(assert (= (str.++  A "aa" "")  (str.++  "a" B B B) ))
(assert (= (str.++  B B B "a")  (str.++  B "a" B "a") ))
(assert (= (str.++  "aa" B "a")  (str.++  B A "a") ))
(assert (= (str.++  A "a" B)  (str.++  "a" B A) ))
(assert (= (str.++  B B A)  (str.++  B "aa" B) ))
(assert (= (str.++  B B A)  (str.++  B B B B) ))
(assert (= (str.++  A "a" B)  (str.++  "a" B B B) ))
(assert (= (str.++  A A)  (str.++  A "aa" "") ))
(assert (= (str.++  A A)  (str.++  "aa" B B) ))
(assert (= (str.++  A B B)  (str.++  B "a" B "a") ))
(assert (= (str.++  A A)  (str.++  B "aa" B) ))
(assert (= (str.++  A A)  (str.++  "aaa" B) ))
(assert (= (str.++  "a" B A)  (str.++  B B "aa") ))
(assert (= (str.++  B B A)  (str.++  B "a" B "a") ))
(assert (= (str.++  A A)  (str.++  B B "aa") ))
(assert (= (str.++  A A)  (str.++  "a" B "a" B) ))
(assert (= (str.++  A "aa" "")  (str.++  A B "a") ))
(assert (= (str.++  A "a" B)  (str.++  B B B B) ))
(assert (= (str.++  A A)  (str.++  B "aaa" "") ))
(assert (= (str.++  "a" B "a" B)  (str.++  "a" B "a" B) ))
(assert (= (str.++  "aa" A)  (str.++  B B "a" B) ))
(assert (= (str.++  B "a" B B)  (str.++  B B "aa") ))
(assert (= (str.++  B B "aa")  (str.++  B "aa" B) ))
(assert (= (str.++  "aa" A)  (str.++  B "a" B "a") ))
(assert (= (str.++  B B A)  (str.++  "a" B B B) ))
(assert (= (str.++  B "aaa" "")  (str.++  "aa" B B) ))
(assert (= (str.++  "a" B A)  (str.++  B "aa" B) ))
(assert (= (str.++  "a" B "aa")  (str.++  B B "aa") ))
(assert (= (str.++  B B "a" B)  (str.++  "a" B A) ))
(assert (= (str.++  A A)  (str.++  B "aa" B) ))
(assert (= (str.++  B B "aa")  (str.++  "a" B "a" B) ))
(assert (= (str.++  B B A)  (str.++  B "a" B "a") ))
(assert (= (str.++  A B "a")  (str.++  B "a" B B) ))
(assert (= (str.++  "aa" A)  (str.++  B B B B) ))
(assert (= (str.++  "a" B A)  (str.++  B "aaa" "") ))
(assert (= (str.++  "a" B A)  (str.++  "a" B "a" B) ))
(assert (= (str.++  A A)  (str.++  B B B "a") ))
(assert (= (str.++  A "aa" "")  (str.++  B B B B) ))
(check-sat)
(get-model)
