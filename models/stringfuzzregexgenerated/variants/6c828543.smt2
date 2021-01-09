(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "0"))) (re.++ (re.+ (re.+ (str.to.re "1"))) (re.++ (re.union (re.* (str.to.re "2")) (re.union (str.to.re "3") (str.to.re "44"))) (re.++ (re.union (re.* (str.to.re "555")) (re.* (str.to.re "6"))) (re.++ (re.+ (re.union (str.to.re "77") (str.to.re "8"))) (re.++ (re.* (re.union (str.to.re "999") (str.to.re "aaa"))) (re.++ (re.union (re.union (str.to.re "bbb") (str.to.re "ccc")) (re.* (str.to.re "dd"))) (re.++ (re.union (re.union (str.to.re "e") (str.to.re "f")) (re.+ (str.to.re "g"))) (re.++ (re.union (re.+ (str.to.re "hh")) (re.* (str.to.re "ii"))) (re.union (re.union (str.to.re "jjj") (re.* (re.* (str.to.re "")))) (re.* (str.to.re "l"))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
