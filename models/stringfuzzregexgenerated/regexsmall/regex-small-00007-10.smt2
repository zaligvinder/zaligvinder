(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "0"))) (re.++ (re.* (re.union (str.to_re "111") (str.to_re "22"))) (re.++ (re.union (re.union (str.to_re "33") (str.to_re "4")) (re.* (str.to_re "55"))) (re.++ (re.+ (re.* (str.to_re "6"))) (re.++ (re.+ (re.+ (str.to_re "77"))) (re.++ (re.union (re.+ (str.to_re "88")) (re.* (str.to_re "9"))) (re.union (re.* (str.to_re "aa")) (re.* (str.to_re "bbb")))))))))))
(check-sat)