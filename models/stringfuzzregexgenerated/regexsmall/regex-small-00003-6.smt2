(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.* (str.to_re "0")) (re.union (str.to_re "1") (str.to_re "222"))) (re.++ (re.* (re.+ (str.to_re "3"))) (re.* (re.* (str.to_re "44")))))))
(check-sat)