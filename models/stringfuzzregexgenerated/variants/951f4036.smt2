(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "0"))) (re.++ (re.union (re.union (str.to_re "111") (str.to_re "222")) (re.* (str.to_re "33"))) (re.++ (re.union (re.* (str.to_re "444")) (re.+ (str.to_re "555"))) (re.++ (re.+ (re.* (str.to_re "66"))) (re.++ (re.union (re.union (str.to_re "7") (str.to_re "88")) (re.+ (str.to_re "9"))) (re.++ (re.* (re.+ (str.to_re "aaa"))) (re.++ (re.union (re.+ (str.to_re "bbb")) (re.* (str.to_re "cc"))) (re.++ (re.+ (re.+ (str.to_re "d"))) (re.++ (re.* (re.* (str.to_re "ee"))) (re.++ (re.+ (str.to_re "fff")) (re.+ (str.to_re "fff"))))))))))))))
(assert (<= 226 (str.len var0)))
(check-sat)
