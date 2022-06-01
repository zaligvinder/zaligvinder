(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "00"))) (re.++ (re.+ (re.+ (str.to_re "111"))) (re.++ (re.union (re.+ (str.to_re "222")) (re.* (str.to_re "333"))) (re.++ (re.union (re.* (str.to_re "444")) (re.union (str.to_re "555") (str.to_re "6"))) (re.* (re.+ (str.to_re "777")))))))))
(check-sat)