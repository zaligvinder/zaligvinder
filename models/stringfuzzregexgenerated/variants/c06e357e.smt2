(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "000"))) (re.++ (re.* (re.+ (str.to.re "111"))) (re.++ (re.* (re.+ (str.to.re "22"))) (re.++ (re.* (re.+ (str.to.re "3"))) (re.++ (re.+ (re.* (str.to.re "444"))) (re.++ (re.+ (re.+ (str.to.re "555"))) (re.++ (re.+ (re.union (str.to.re "666") (str.to.re "7"))) (re.++ (re.* (re.* (str.to.re "888"))) (re.++ (re.union (re.+ (str.to.re "9")) (re.union (str.to.re "aaa") (str.to.re "bb"))) (re.union (re.* (str.to.re "c")) (re.* (str.to.re "ddd"))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)
