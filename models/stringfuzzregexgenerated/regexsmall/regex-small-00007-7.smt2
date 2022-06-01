(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.union (str.to_re "00") (str.to_re "1")) (re.union (str.to_re "222") (str.to_re "3"))) (re.++ (re.+ (re.* (str.to_re "444"))) (re.++ (re.union (re.union (str.to_re "555") (str.to_re "66")) (re.+ (str.to_re "77"))) (re.++ (re.union (re.+ (str.to_re "88")) (re.* (str.to_re "999"))) (re.++ (re.union (re.* (str.to_re "a")) (re.+ (str.to_re "b"))) (re.++ (re.* (re.union (str.to_re "cc") (str.to_re "dd"))) (re.+ (re.union (str.to_re "eee") (str.to_re "ff")))))))))))
(check-sat)