(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "j!bcy"))))
(assert (str.in.re x (re.+ (str.to.re "{+7O6+e4Rw8wAI2_o\\n^sRy9u'\r''\x0b'>+Exl`H;Tzt+tO!oVHILhBf?;^&')Is,^S?M>Hi\\.e9}AemNI.21c4`"))))
(assert (> (str.len x) 17))
(assert (< (str.to.int x) 20))
(check-sat)
