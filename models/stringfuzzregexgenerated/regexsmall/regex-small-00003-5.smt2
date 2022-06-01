(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "0"))) (re.++ (re.* (re.* (str.to_re "111"))) (re.union (re.union (str.to_re "222") (str.to_re "333")) (re.* (str.to_re "444")))))))
(check-sat)