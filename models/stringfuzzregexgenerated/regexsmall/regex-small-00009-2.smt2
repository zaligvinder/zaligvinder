(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "00"))) (re.++ (re.union (re.* (str.to.re "111")) (re.union (str.to.re "222") (str.to.re "333"))) (re.++ (re.* (re.* (str.to.re "444"))) (re.++ (re.* (re.* (str.to.re "55"))) (re.++ (re.* (re.* (str.to.re "6"))) (re.++ (re.* (re.union (str.to.re "777") (str.to.re "888"))) (re.++ (re.+ (re.* (str.to.re "999"))) (re.++ (re.union (re.* (str.to.re "aaa")) (re.+ (str.to.re "bbb"))) (re.union (re.* (str.to.re "ccc")) (re.* (str.to.re "ddd")))))))))))))
(check-sat)