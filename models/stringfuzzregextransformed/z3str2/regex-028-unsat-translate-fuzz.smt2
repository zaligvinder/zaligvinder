(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "$Qd' ''"))))
(assert (str.in.re x (re.* (str.to.re "'O74&89b'"))))
(assert (str.in.re x (re.+ (str.to.re "!75:~_|'\x0c'1!KAFA'\n';'\r'S}*u1b'5e?-<Dd"))))
(assert (> (str.to.int x) 2))
(check-sat)
