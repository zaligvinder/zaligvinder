(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "0"))) (re.++ (re.+ (re.union (str.to_re "11") (str.to_re "222"))) (re.++ (re.* (re.* (str.to_re "333"))) (re.++ (re.* (re.+ (str.to_re "444"))) (re.++ (re.* (re.* (str.to_re "555"))) (re.++ (re.* (re.+ (str.to_re "6"))) (re.++ (re.* (re.+ (str.to_re "77"))) (re.* (re.union (str.to_re "888") (str.to_re "99"))))))))))))
(check-sat)