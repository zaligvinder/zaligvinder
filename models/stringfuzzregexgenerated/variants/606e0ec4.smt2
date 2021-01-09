(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "0"))) (re.++ (re.+ (re.union (str.to.re "11") (str.to.re "222"))) (re.++ (re.union (re.+ (str.to.re "3")) (re.+ (str.to.re "444"))) (re.++ (re.* (re.+ (str.to.re "555"))) (re.++ (re.union (re.+ (str.to.re "66")) (re.union (str.to.re "7") (str.to.re "888"))) (re.++ (re.* (re.* (str.to.re "999"))) (re.++ (re.+ (re.union (str.to.re "aaa") (str.to.re "bbb"))) (re.++ (re.+ (re.union (str.to.re "cc") (str.to.re "d"))) (re.++ (re.* (re.+ (str.to.re "eee"))) (re.* (re.+ (re.+ (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
