(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "000"))) (re.++ (re.* (re.+ (str.to_re "111"))) (re.+ (re.union (str.to_re "222") (str.to_re "3")))))))
(check-sat)