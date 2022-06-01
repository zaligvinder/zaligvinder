(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.+ (re.union (str.to_re "00") (str.to_re "1")))))
(check-sat)