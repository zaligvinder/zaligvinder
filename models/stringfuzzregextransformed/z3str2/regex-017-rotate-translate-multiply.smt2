(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.union (str.to.re "##ZZJJ]]") (re.union (str.to.re "112233") (str.to.re """""""""''' '' '''"))))))
(assert (= 10 (str.len x)))
(check-sat)
