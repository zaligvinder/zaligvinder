(declare-fun PCTEMP_LHS_1 () Bool)
(declare-fun PCTEMP_LHS_1_group_1 () String)
(declare-fun PCTEMP_LHS_1_idx_0 () String)
(declare-fun PCTEMP_LHS_1_len_0 () Int)
(declare-fun T0_2 () String)
(declare-fun T1_2 () String)
(declare-fun T2_2 () String)
(declare-fun T_2 () Bool)
(declare-fun var_0xINPUT_9 () String)
(assert (ite PCTEMP_LHS_1 (and (= var_0xINPUT_9 (str.++ T0_2 T1_2))(= T1_2 (str.++ PCTEMP_LHS_1_idx_0 T2_2))(not (str.in.re T0_2 (re.++   (str.to.re "j" )  (re.++   (str.to.re "o" ) (re.++  (str.to.re "h" )  (str.to.re "n" )  ) ) ) ))) (not (str.in.re var_0xINPUT_9 (re.++   (str.to.re "j" )  (re.++   (str.to.re "o" ) (re.++  (str.to.re "h" )  (str.to.re "n" )  ) ) ) ))))
(assert (= T_2 (= PCTEMP_LHS_1 false)))
(assert T_2)
(assert (ite PCTEMP_LHS_1 (and (= PCTEMP_LHS_1_group_1 PCTEMP_LHS_1_idx_0)(str.in.re PCTEMP_LHS_1_idx_0 (re.++   (str.to.re "j" )  (re.++   (str.to.re "o" ) (re.++  (str.to.re "h" )  (str.to.re "n" )  ) ) ) )(= PCTEMP_LHS_1_len_0 (str.len PCTEMP_LHS_1_idx_0))(< PCTEMP_LHS_1_len_0 15)) true))
(check-sat)
