(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "00"))) (re.++ (re.+ (re.+ (str.to_re "111"))) (re.++ (re.* (re.union (str.to_re "222") (str.to_re "3"))) (re.++ (re.union (re.* (str.to_re "44")) (re.+ (str.to_re "555"))) (re.++ (re.union (re.+ (str.to_re "66")) (re.+ (str.to_re "7"))) (re.++ (re.* (re.+ (str.to_re "888"))) (re.++ (re.+ (re.+ (str.to_re "999"))) (re.++ (re.+ (re.union (str.to_re "aa") (str.to_re "b"))) (re.* (re.* (str.to_re "c")))))))))))))
(check-sat)