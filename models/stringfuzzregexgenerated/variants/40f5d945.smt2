(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "000"))) (re.++ (re.union (re.+ (str.to_re "11")) (re.* (str.to_re "2"))) (re.++ (re.* (re.+ (str.to_re "3"))) (re.++ (re.+ (re.* (str.to_re "444"))) (re.++ (re.union (re.* (str.to_re "555")) (re.+ (str.to_re "6"))) (re.++ (re.union (re.* (str.to_re "77")) (re.* (str.to_re "88"))) (re.++ (re.+ (re.union (str.to_re "9") (str.to_re "a"))) (re.++ (re.union (re.+ (str.to_re "b")) (re.+ (str.to_re "ccc"))) (re.++ (re.+ (re.* (str.to_re "d"))) (re.union (re.union (str.to_re "eee") (str.to_re "ff")) (re.++ (str.to_re "g") (str.to_re "g"))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
