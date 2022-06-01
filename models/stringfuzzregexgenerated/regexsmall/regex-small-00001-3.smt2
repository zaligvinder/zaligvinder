(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.union (re.* (str.to_re "000")) (re.+ (str.to_re "1")))))
(check-sat)