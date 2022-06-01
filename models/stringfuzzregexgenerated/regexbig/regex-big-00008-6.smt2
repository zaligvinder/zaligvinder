(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "000"))) (re.++ (re.* (re.+ (str.to_re "1"))) (re.++ (re.* (re.union (str.to_re "22") (str.to_re "33"))) (re.++ (re.* (re.* (str.to_re "4"))) (re.++ (re.* (re.* (str.to_re "555"))) (re.++ (re.* (re.+ (str.to_re "6"))) (re.++ (re.+ (re.* (str.to_re "7"))) (re.union (re.* (str.to_re "88")) (re.+ (str.to_re "9"))))))))))))
(check-sat)