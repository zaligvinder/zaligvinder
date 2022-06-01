(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "00"))) (re.++ (re.* (re.union (str.to_re "11") (str.to_re "2"))) (re.++ (re.+ (re.union (str.to_re "3") (str.to_re "44"))) (re.++ (re.* (re.* (str.to_re "5"))) (re.++ (re.union (re.* (str.to_re "666")) (re.+ (str.to_re "777"))) (re.++ (re.* (re.+ (str.to_re "8"))) (re.++ (re.* (re.+ (str.to_re "99"))) (re.++ (re.+ (re.+ (str.to_re "aaa"))) (re.union (re.* (str.to_re "bbb")) (re.+ (str.to_re "c")))))))))))))
(check-sat)