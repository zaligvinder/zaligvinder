(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "00"))) (re.++ (re.union (re.* (str.to_re "11")) (re.* (str.to_re "222"))) (re.* (re.* (str.to_re "333")))))))
(check-sat)