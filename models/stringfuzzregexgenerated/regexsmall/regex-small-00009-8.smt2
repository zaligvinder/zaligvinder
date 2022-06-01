(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "0")) (re.+ (str.to_re "11"))) (re.++ (re.+ (re.+ (str.to_re "22"))) (re.++ (re.* (re.+ (str.to_re "333"))) (re.++ (re.+ (re.* (str.to_re "44"))) (re.++ (re.* (re.+ (str.to_re "5"))) (re.++ (re.+ (re.+ (str.to_re "66"))) (re.++ (re.+ (re.union (str.to_re "777") (str.to_re "888"))) (re.++ (re.union (re.* (str.to_re "999")) (re.+ (str.to_re "aa"))) (re.union (re.* (str.to_re "bbb")) (re.+ (str.to_re "ccc")))))))))))))
(check-sat)