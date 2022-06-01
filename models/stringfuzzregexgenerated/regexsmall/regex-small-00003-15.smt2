(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.* (str.to_re "000")) (re.* (str.to_re "11"))) (re.++ (re.union (re.* (str.to_re "2")) (re.+ (str.to_re "33"))) (re.+ (re.union (str.to_re "444") (str.to_re "555")))))))
(check-sat)