(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.union (str.to_re "000") (str.to_re "11"))) (re.++ (re.+ (re.* (str.to_re "2"))) (re.++ (re.union (re.+ (str.to_re "333")) (re.+ (str.to_re "444"))) (re.++ (re.* (re.union (str.to_re "55") (str.to_re "666"))) (re.++ (re.+ (re.* (str.to_re "7"))) (re.++ (re.union (re.union (str.to_re "88") (str.to_re "9")) (re.+ (str.to_re "aa"))) (re.++ (re.union (re.+ (str.to_re "bbb")) (re.union (str.to_re "ccc") (str.to_re "dd"))) (re.+ (re.union (str.to_re "eee") (str.to_re "f"))))))))))))
(check-sat)