(set-logic QF_S)
(declare-const x String)
(declare-const y String)
(assert (str.in.re x (re.+ (str.to.re "aab"))))
(assert (str.in.re x (re.+ (str.to.re "N1R'\x0b'5saa'\x0c'zb:r6e{"))))
(assert (str.in.re x (re.+ (str.to.re "atHPsJ}NtiAP'HbxACo6u8?*sJiH0p2r8z#PGjkC@u'\n'75&E(d-!HYYe^UZR(A77oI\\ya+@'\x0b'jF;?\\><s+=aOA^P<SI>=p'_W\\mvm\\no>j(wYy>DQ3h'\x0c'>AL:' '@Y''cIW'\x0b'^SW""LlJa@q)dK:Fc"))))
(check-sat)
