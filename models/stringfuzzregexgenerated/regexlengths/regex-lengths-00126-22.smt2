(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "000")) (re.union (str.to.re "111") (str.to.re "22"))) (re.++ (re.union (re.* (str.to.re "3")) (re.* (str.to.re "4"))) (re.++ (re.* (re.+ (str.to.re "55"))) (re.++ (re.+ (re.* (str.to.re "66"))) (re.++ (re.+ (re.union (str.to.re "77") (str.to.re "8"))) (re.++ (re.* (re.+ (str.to.re "999"))) (re.++ (re.union (re.+ (str.to.re "a")) (re.* (str.to.re "bbb"))) (re.++ (re.* (re.* (str.to.re "ccc"))) (re.++ (re.* (re.union (str.to.re "ddd") (str.to.re "eee"))) (re.union (re.union (str.to.re "f") (str.to.re "ggg")) (re.+ (str.to.re "hhh"))))))))))))))
(assert (<= 126 (str.len var0)))
(check-sat)