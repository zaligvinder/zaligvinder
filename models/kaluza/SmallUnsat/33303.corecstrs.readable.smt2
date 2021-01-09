(declare-fun PCTEMP_LHS_1 () String)
(assert (not (str.in.re PCTEMP_LHS_1 (re.++   (str.to.re "%" )  (re.++   (str.to.re "h" ) (re.++  (str.to.re "o" ) (re.++  (str.to.re "s" ) (re.++  (str.to.re "t" )  (str.to.re "%" )  ) ) ) ) ) )))
(check-sat)
