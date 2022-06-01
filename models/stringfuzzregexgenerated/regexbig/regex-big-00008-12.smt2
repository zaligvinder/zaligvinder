(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "00") (str.to_re "1"))) (re.++ (re.+ (re.* (str.to_re "2"))) (re.++ (re.+ (re.+ (str.to_re "333"))) (re.++ (re.* (re.+ (str.to_re "4"))) (re.++ (re.+ (re.union (str.to_re "55") (str.to_re "666"))) (re.++ (re.+ (re.+ (str.to_re "7"))) (re.++ (re.union (re.union (str.to_re "8") (str.to_re "999")) (re.union (str.to_re "aaa") (str.to_re "bbb"))) (re.* (re.union (str.to_re "cc") (str.to_re "dd"))))))))))))
(check-sat)