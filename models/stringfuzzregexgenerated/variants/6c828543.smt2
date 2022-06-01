(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.+ (str.to_re "0"))) (re.++ (re.+ (re.+ (str.to_re "1"))) (re.++ (re.union (re.* (str.to_re "2")) (re.union (str.to_re "3") (str.to_re "44"))) (re.++ (re.union (re.* (str.to_re "555")) (re.* (str.to_re "6"))) (re.++ (re.+ (re.union (str.to_re "77") (str.to_re "8"))) (re.++ (re.* (re.union (str.to_re "999") (str.to_re "aaa"))) (re.++ (re.union (re.union (str.to_re "bbb") (str.to_re "ccc")) (re.* (str.to_re "dd"))) (re.++ (re.union (re.union (str.to_re "e") (str.to_re "f")) (re.+ (str.to_re "g"))) (re.++ (re.union (re.+ (str.to_re "hh")) (re.* (str.to_re "ii"))) (re.union (re.union (str.to_re "jjj") (re.* (re.* (str.to_re "")))) (re.* (str.to_re "l"))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
