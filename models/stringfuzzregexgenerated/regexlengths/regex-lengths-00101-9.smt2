(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "000"))) (re.++ (re.union (re.+ (str.to.re "111")) (re.* (str.to.re "2"))) (re.++ (re.union (re.* (str.to.re "33")) (re.+ (str.to.re "4"))) (re.++ (re.+ (re.union (str.to.re "5") (str.to.re "6"))) (re.++ (re.+ (re.* (str.to.re "777"))) (re.++ (re.* (re.+ (str.to.re "8"))) (re.++ (re.union (re.union (str.to.re "999") (str.to.re "aaa")) (re.* (str.to.re "bb"))) (re.++ (re.+ (re.* (str.to.re "c"))) (re.++ (re.union (re.* (str.to.re "ddd")) (re.union (str.to.re "e") (str.to.re "f"))) (re.+ (re.* (str.to.re "ggg"))))))))))))))
(assert (<= 101 (str.len var0)))
(check-sat)