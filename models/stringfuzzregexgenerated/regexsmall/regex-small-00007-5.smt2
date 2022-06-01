(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "0"))) (re.++ (re.union (re.+ (str.to_re "111")) (re.* (str.to_re "222"))) (re.++ (re.* (re.union (str.to_re "33") (str.to_re "44"))) (re.++ (re.* (re.+ (str.to_re "555"))) (re.++ (re.+ (re.+ (str.to_re "666"))) (re.++ (re.* (re.* (str.to_re "777"))) (re.* (re.union (str.to_re "88") (str.to_re "9")))))))))))
(check-sat)