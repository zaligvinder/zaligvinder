(set-logic QF_S)

(declare-fun var_0 () String)
(declare-fun var_1 () String)
(declare-fun var_2 () String)
(declare-fun var_3 () String)
(declare-fun var_4 () String)
(declare-fun var_5 () String)
(declare-fun var_6 () String)
(declare-fun var_7 () String)
(declare-fun var_8 () String)
(declare-fun var_9 () String)
(declare-fun var_10 () String)
(declare-fun var_11 () String)
(declare-fun var_12 () String)

(assert (str.in.re (str.++ var_9 "z" var_10 ) re.nostr))
(assert (str.in.re var_10 (re.* (re.range "a" "u"))))
(assert (str.in.re var_9 (re.* (re.range "a" "u"))))
(assert (str.in.re (str.++ "a" var_10 ) (re.* (re.range "a" "u"))))
(assert (str.in.re (str.++ "b" var_9 ) (re.* (re.range "a" "u"))))
(assert (not (str.in.re (str.++ "b" var_9 "z" "a" var_10 ) re.nostr)))
(check-sat)
