(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "00"))) (re.++ (re.union (re.* (str.to_re "11")) (re.+ (str.to_re "22"))) (re.++ (re.+ (re.+ (str.to_re "3"))) (re.++ (re.* (re.union (str.to_re "444") (str.to_re "5"))) (re.union (re.union (str.to_re "666") (str.to_re "77")) (re.* (str.to_re "8")))))))))
(check-sat)