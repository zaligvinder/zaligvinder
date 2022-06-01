(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "00"))) (re.++ (re.* (re.+ (str.to_re "111"))) (re.union (re.* (str.to_re "222")) (re.* (str.to_re "33")))))))
(check-sat)