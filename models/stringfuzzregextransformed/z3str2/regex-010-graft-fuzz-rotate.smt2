(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.+ (str.to.re "bny'' ''b=A(VnbVatx=%")))))
(assert (str.in.re x (re.+ (str.to.re "a:ne""""-u"))))
(assert (str.in.re x (str.to.re "RB2g")))
(check-sat)
