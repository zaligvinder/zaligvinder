(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.* (re.+ (str.to_re "000")))))
(check-sat)