(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (str.to.re """""xa"))))
(assert (str.in.re x (re.* (str.to.re "7!29aa"))))
(assert (str.in.re x (re.* (str.to.re "c0'n\\'r'g'r\\'y?ba"))))
(check-sat)
