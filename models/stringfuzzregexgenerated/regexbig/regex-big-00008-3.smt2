(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.+ (str.to_re "0"))) (re.++ (re.union (re.+ (str.to_re "111")) (re.+ (str.to_re "2"))) (re.++ (re.+ (re.* (str.to_re "33"))) (re.++ (re.+ (re.+ (str.to_re "4"))) (re.++ (re.* (re.* (str.to_re "55"))) (re.++ (re.* (re.* (str.to_re "666"))) (re.++ (re.+ (re.union (str.to_re "77") (str.to_re "88"))) (re.* (re.union (str.to_re "9") (str.to_re "aa"))))))))))))
(check-sat)