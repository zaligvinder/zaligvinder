(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "00")) (re.union (str.to.re "1") (str.to.re "2"))) (re.++ (re.union (re.union (str.to.re "333") (str.to.re "4")) (re.* (str.to.re "55"))) (re.++ (re.union (re.+ (str.to.re "66")) (re.* (str.to.re "77"))) (re.++ (re.* (re.+ (str.to.re "888"))) (re.++ (re.* (re.* (str.to.re "99"))) (re.++ (re.* (re.union (str.to.re "aa") (str.to.re "bb"))) (re.++ (re.+ (re.union (str.to.re "cc") (str.to.re "dd"))) (re.++ (re.union (re.union (str.to.re "e") (str.to.re "f")) (re.* (str.to.re "gg"))) (re.++ (re.* (re.union (str.to.re "hh") (str.to.re "iii"))) (re.* (re.++ (str.to.re "j") (str.to.re "j"))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)
