(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (str.to.re "\\DG]b' 'q_baK~aD(#JJIC")))
(assert (str.in.re x (re.+ (str.to.re "E4?^*u' 'abba+^n"))))
(assert (str.in.re x (re.* (re.+ (str.to.re "6s*sa[C)i'\x0b'")))))
(assert (> 2 (str.len x)))
(check-sat)
