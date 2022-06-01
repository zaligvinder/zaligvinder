(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.union (str.to_re "00") (str.to_re "11"))) (re.++ (re.* (re.+ (str.to_re "22"))) (re.++ (re.union (re.+ (str.to_re "333")) (re.* (str.to_re "4"))) (re.++ (re.* (re.union (str.to_re "55") (str.to_re "66"))) (re.++ (re.union (re.+ (str.to_re "777")) (re.* (str.to_re "888"))) (re.++ (re.union (re.union (str.to_re "9") (str.to_re "a")) (re.+ (str.to_re "b"))) (re.++ (re.+ (re.union (str.to_re "c") (str.to_re "d"))) (re.+ (re.union (str.to_re "ee") (str.to_re "f"))))))))))))
(check-sat)