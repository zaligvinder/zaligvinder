(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (re.++ (str.to.re "aP?.'\r'") (str.to.re "=fj1c!")))))
(assert (= 0 (str.to.int x)))
(assert (not (= x "|'2EqEV-0vsbc1S&o@qR3b9=")))
(assert (not (= x "a;Fdh3\\dEs'\t'bc71kMlA<")))
(check-sat)
