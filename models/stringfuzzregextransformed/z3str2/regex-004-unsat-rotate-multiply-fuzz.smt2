(set-logic QF_S)
(declare-const x String)
(assert (= x "~1'!_2-;GbcydE'\t'EclHwc\\!'\x0c'Gd'\x0c'P:Ge"))
(assert (str.in.re x (re.++ (re.* (re.+ (str.to.re "cU'hdeCx2l"))) (str.to.re "abb'\x0c'vZ>$cU9O!"))))
(check-sat)
