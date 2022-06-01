(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.union (re.+ (str.to_re "0")) (re.* (str.to_re "11")))))
(check-sat)