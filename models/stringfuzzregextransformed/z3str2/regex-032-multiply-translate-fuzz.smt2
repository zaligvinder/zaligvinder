(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (= (str.++ x y) (str.++ m n)))
(assert (str.in.re n (re.* (str.to.re "-'\t'r64fW4wdYs$7'\r'-#j$853\\}u0'\r'9K%d<04\\n'"))))
(assert (= (str.to.int x) (str.len m)))
(check-sat)
