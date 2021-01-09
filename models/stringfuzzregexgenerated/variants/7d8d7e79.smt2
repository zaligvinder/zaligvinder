(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "000") (str.to.re "111")) (re.+ (str.to.re "222"))) (re.++ (re.* (re.union (str.to.re "33") (str.to.re "444"))) (re.++ (re.* (re.union (str.to.re "555") (str.to.re "66"))) (re.++ (re.* (re.* (str.to.re "777"))) (re.++ (re.* (re.* (str.to.re "8"))) (re.++ (re.* (re.* (str.to.re "999"))) (re.++ (re.* (re.* (str.to.re "aaa"))) (re.++ (re.* (re.* (str.to.re "b"))) (re.++ (re.* (re.union (str.to.re "cc") (str.to.re "d"))) (re.* (re.* (str.to.re "ee"))))))))))))))
(assert (<= 101 (str.len var0)))
(check-sat)
