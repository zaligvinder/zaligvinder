(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "'Bh3navlv"))
(assert (str.in.re x (re.+ (re.+ (str.to.re "h!av")))))
(check-sat)
