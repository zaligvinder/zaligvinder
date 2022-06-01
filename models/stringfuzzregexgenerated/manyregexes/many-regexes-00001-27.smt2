(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "000"))) (re.++ (re.+ (re.* (str.to_re "1"))) (re.++ (re.+ (re.+ (str.to_re "222"))) (re.++ (re.+ (re.* (str.to_re "333"))) (re.++ (re.* (re.union (str.to_re "4") (str.to_re "555"))) (re.++ (re.union (re.union (str.to_re "666") (str.to_re "777")) (re.+ (str.to_re "8"))) (re.++ (re.* (re.union (str.to_re "999") (str.to_re "aaa"))) (re.++ (re.+ (re.+ (str.to_re "bb"))) (re.++ (re.union (re.+ (str.to_re "c")) (re.* (str.to_re "ddd"))) (re.* (re.* (str.to_re "ee"))))))))))))))
(check-sat)