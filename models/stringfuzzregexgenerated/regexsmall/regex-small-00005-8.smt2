(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "000"))) (re.++ (re.+ (re.+ (str.to_re "1"))) (re.++ (re.* (re.union (str.to_re "22") (str.to_re "3"))) (re.++ (re.* (re.+ (str.to_re "444"))) (re.union (re.+ (str.to_re "555")) (re.+ (str.to_re "666")))))))))
(check-sat)