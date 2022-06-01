(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "00"))) (re.++ (re.* (re.+ (str.to_re "11"))) (re.++ (re.union (re.union (str.to_re "222") (str.to_re "3")) (re.+ (str.to_re "4"))) (re.++ (re.* (re.+ (str.to_re "55"))) (re.++ (re.+ (re.+ (str.to_re "666"))) (re.++ (re.union (re.union (str.to_re "777") (str.to_re "8")) (re.+ (str.to_re "9"))) (re.++ (re.* (re.* (str.to_re "a"))) (re.+ (re.union (str.to_re "bb") (str.to_re "c"))))))))))))
(check-sat)