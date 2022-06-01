(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "00")) (re.* (str.to_re "111"))) (re.++ (re.* (re.+ (str.to_re "222"))) (re.++ (re.union (re.* (str.to_re "333")) (re.+ (str.to_re "444"))) (re.++ (re.+ (re.+ (str.to_re "55"))) (re.++ (re.union (re.* (str.to_re "6")) (re.* (str.to_re "777"))) (re.++ (re.union (re.+ (str.to_re "888")) (re.union (str.to_re "99") (str.to_re "aa"))) (re.+ (re.* (str.to_re "bbb")))))))))))
(check-sat)