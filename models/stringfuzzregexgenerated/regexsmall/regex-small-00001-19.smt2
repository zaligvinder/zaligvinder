(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.union (re.* (str.to_re "000")) (re.union (str.to_re "111") (str.to_re "22")))))
(check-sat)