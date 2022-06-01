(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.union (str.to_re "000") (str.to_re "111")) (re.+ (str.to_re "222"))) (re.++ (re.* (re.union (str.to_re "33") (str.to_re "444"))) (re.++ (re.* (re.union (str.to_re "555") (str.to_re "66"))) (re.++ (re.* (re.* (str.to_re "777"))) (re.++ (re.* (re.* (str.to_re "8"))) (re.++ (re.* (re.* (str.to_re "999"))) (re.++ (re.* (re.* (str.to_re "aaa"))) (re.++ (re.* (re.* (str.to_re "b"))) (re.++ (re.* (re.union (str.to_re "cc") (str.to_re "d"))) (re.* (re.* (str.to_re "ee"))))))))))))))
(assert (<= 101 (str.len var0)))
(check-sat)
