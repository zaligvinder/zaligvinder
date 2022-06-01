(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.union (str.to_re "00") (str.to_re "11"))) (re.++ (re.union (re.+ (str.to_re "2")) (re.* (str.to_re "33"))) (re.++ (re.* (re.+ (str.to_re "4"))) (re.++ (re.* (re.+ (str.to_re "5"))) (re.+ (re.* (str.to_re "666")))))))))
(check-sat)