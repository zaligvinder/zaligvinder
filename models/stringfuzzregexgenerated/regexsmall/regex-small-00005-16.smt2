(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.union (str.to_re "000") (str.to_re "11")) (re.union (str.to_re "2") (str.to_re "333"))) (re.++ (re.* (re.+ (str.to_re "444"))) (re.++ (re.union (re.+ (str.to_re "55")) (re.* (str.to_re "666"))) (re.++ (re.* (re.* (str.to_re "777"))) (re.+ (re.+ (str.to_re "88")))))))))
(check-sat)