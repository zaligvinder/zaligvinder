(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (= x "4M|b''b0x\\'V}4Y`aadqRaa"))
(assert (str.in.re x (re.+ (str.to.re "|V"))))
(check-sat)
