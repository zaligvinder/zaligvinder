(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.* (re.+ (str.to.re ")&#Q`Q)Ufoy&)yzmPU=")))))
(assert (str.in.re x (re.+ (str.to.re "z+&X[['\n'L"))))
(assert (str.in.re x (str.to.re "'\r'x2n")))
(check-sat)
