(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "!!''\\\\rr''''\\\\tt''ZZLL00FF''\\\\tt''!!''\\\\rr''''\\\\tt''ZZLL00FF''\\\\tt''"))
(assert (str.in.re x (re.* (re.* (str.to.re "!!''\\\\rr''''\\\\tt''ZZLL00FF''\\\\tt''")))))
(check-sat)
