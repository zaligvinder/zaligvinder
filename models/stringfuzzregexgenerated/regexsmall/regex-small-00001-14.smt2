(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.union (re.union (str.to_re "0") (str.to_re "11")) (re.* (str.to_re "2")))))
(check-sat)