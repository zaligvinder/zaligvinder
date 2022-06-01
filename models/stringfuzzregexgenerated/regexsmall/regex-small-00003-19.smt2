(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "00") (str.to_re "11"))) (re.++ (re.* (re.* (str.to_re "2"))) (re.union (re.* (str.to_re "333")) (re.union (str.to_re "444") (str.to_re "5")))))))
(check-sat)