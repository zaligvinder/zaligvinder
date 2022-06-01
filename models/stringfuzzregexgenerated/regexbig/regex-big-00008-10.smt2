(set-logic ALL)
(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.union (str.to_re "000") (str.to_re "11")) (re.+ (str.to_re "2"))) (re.++ (re.* (re.+ (str.to_re "3"))) (re.++ (re.* (re.* (str.to_re "44"))) (re.++ (re.+ (re.+ (str.to_re "5"))) (re.++ (re.union (re.+ (str.to_re "66")) (re.* (str.to_re "777"))) (re.++ (re.union (re.union (str.to_re "8") (str.to_re "99")) (re.* (str.to_re "aa"))) (re.++ (re.union (re.union (str.to_re "bb") (str.to_re "c")) (re.+ (str.to_re "ddd"))) (re.union (re.* (str.to_re "e")) (re.* (str.to_re "f"))))))))))))
(check-sat)