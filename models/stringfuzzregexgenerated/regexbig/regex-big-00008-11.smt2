(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "0"))) (re.++ (re.* (re.+ (str.to_re "11"))) (re.++ (re.* (re.* (str.to_re "22"))) (re.++ (re.* (re.+ (str.to_re "3"))) (re.++ (re.* (re.union (str.to_re "444") (str.to_re "555"))) (re.++ (re.+ (re.* (str.to_re "66"))) (re.++ (re.+ (re.+ (str.to_re "777"))) (re.* (re.union (str.to_re "888") (str.to_re "99"))))))))))))
(check-sat)