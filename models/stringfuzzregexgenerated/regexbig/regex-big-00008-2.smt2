(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "00"))) (re.++ (re.+ (re.union (str.to_re "1") (str.to_re "22"))) (re.++ (re.* (re.* (str.to_re "333"))) (re.++ (re.+ (re.+ (str.to_re "4"))) (re.++ (re.union (re.* (str.to_re "555")) (re.+ (str.to_re "666"))) (re.++ (re.union (re.+ (str.to_re "777")) (re.* (str.to_re "888"))) (re.++ (re.* (re.* (str.to_re "99"))) (re.union (re.+ (str.to_re "aa")) (re.* (str.to_re "bb"))))))))))))
(check-sat)