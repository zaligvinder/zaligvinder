(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.* (str.to_re "0")) (re.* (str.to_re "11"))) (re.++ (re.+ (re.* (str.to_re "222"))) (re.+ (re.+ (str.to_re "3")))))))
(check-sat)