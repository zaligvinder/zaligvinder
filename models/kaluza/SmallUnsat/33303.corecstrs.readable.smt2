(declare-fun PCTEMP_LHS_1 () String)
(assert (not (str.in_re PCTEMP_LHS_1 (re.++   (str.to_re "%" )  (re.++   (str.to_re "h" ) (re.++  (str.to_re "o" ) (re.++  (str.to_re "s" ) (re.++  (str.to_re "t" )  (str.to_re "%" )  ) ) ) ) ) )))
(check-sat)
