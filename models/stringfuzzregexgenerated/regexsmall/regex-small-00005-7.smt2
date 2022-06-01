(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "0")) (re.+ (str.to_re "1"))) (re.++ (re.* (re.+ (str.to_re "2"))) (re.++ (re.union (re.union (str.to_re "3") (str.to_re "4")) (re.union (str.to_re "55") (str.to_re "6"))) (re.++ (re.+ (re.+ (str.to_re "7"))) (re.union (re.* (str.to_re "88")) (re.* (str.to_re "9")))))))))
(check-sat)