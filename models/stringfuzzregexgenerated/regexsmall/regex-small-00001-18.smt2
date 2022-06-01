(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.union (re.union (str.to_re "00") (str.to_re "11")) (re.union (str.to_re "2") (str.to_re "33")))))
(check-sat)