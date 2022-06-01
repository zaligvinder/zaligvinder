(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "000"))) (re.++ (re.union (re.* (str.to_re "11")) (re.* (str.to_re "22"))) (re.++ (re.union (re.union (str.to_re "3") (str.to_re "4")) (re.+ (str.to_re "5"))) (re.++ (re.union (re.+ (str.to_re "6")) (re.union (str.to_re "77") (str.to_re "8"))) (re.++ (re.union (re.+ (str.to_re "99")) (re.union (str.to_re "aa") (str.to_re "bbb"))) (re.++ (re.union (re.union (str.to_re "ccc") (str.to_re "dd")) (re.union (str.to_re "ee") (str.to_re "f"))) (re.++ (re.+ (re.* (str.to_re "g"))) (re.++ (re.* (re.* (str.to_re "hh"))) (re.++ (re.+ (re.* (str.to_re "ii"))) (re.++ (re.* (str.to_re "j")) (re.* (str.to_re "j"))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
