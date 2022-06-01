(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "00"))) (re.++ (re.union (re.* (str.to_re "111")) (re.union (str.to_re "222") (str.to_re "333"))) (re.++ (re.* (re.* (str.to_re "444"))) (re.++ (re.* (re.* (str.to_re "55"))) (re.++ (re.* (re.* (str.to_re "6"))) (re.++ (re.* (re.union (str.to_re "777") (str.to_re "888"))) (re.++ (re.+ (re.* (str.to_re "999"))) (re.++ (re.union (re.* (str.to_re "aaa")) (re.+ (str.to_re "bbb"))) (re.union (re.* (str.to_re "ccc")) (re.* (str.to_re "ddd")))))))))))))
(check-sat)