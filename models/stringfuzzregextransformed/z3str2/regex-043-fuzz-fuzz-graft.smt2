(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(declare-const m String)
(declare-const n String)
(assert (str.in.re x (str.to.re "")))
(assert (= (str.to.int x) 7))
(assert (not (= x "aC")))
(assert (not (= x "d;`Ap@'\\r''")))
(assert (not (= x "w|iaG{c")))
(assert (not (= x "%%CsTx}")))
(assert (not (= x "sXpj$")))
(assert (not (= x "^UA'' ''K<")))
(assert (not (= x "KuGv2F")))
(check-sat)
