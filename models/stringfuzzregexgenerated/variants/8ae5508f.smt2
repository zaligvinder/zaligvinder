(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "00")) (re.union (str.to.re "1") (str.to.re "222"))) (re.++ (re.+ (re.union (str.to.re "333") (str.to.re "4"))) (re.++ (re.union (re.* (str.to.re "5")) (re.+ (str.to.re "6"))) (re.++ (re.+ (re.union (str.to.re "7") (str.to.re "888"))) (re.++ (re.union (re.+ (str.to.re "999")) (re.* (str.to.re "a"))) (re.++ (re.* (re.union (str.to.re "bbb") (str.to.re "cc"))) (re.++ (re.* (re.* (str.to.re "ddd"))) (re.++ (re.* (re.union (str.to.re "ee") (str.to.re "f"))) (re.++ (re.union (re.union (str.to.re "ggg") (str.to.re "hhh")) (re.* (str.to.re "ii"))) (re.union (re.union (str.to.re "j") (str.to.re "kk")) (re.++ (str.to.re "ll") (str.to.re "ll"))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)
