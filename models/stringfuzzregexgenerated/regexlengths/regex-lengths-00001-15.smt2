(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "0")) (re.union (str.to.re "1") (str.to.re "2"))) (re.++ (re.+ (re.union (str.to.re "333") (str.to.re "4"))) (re.++ (re.+ (re.union (str.to.re "55") (str.to.re "6"))) (re.++ (re.union (re.+ (str.to.re "77")) (re.* (str.to.re "888"))) (re.++ (re.* (re.union (str.to.re "9") (str.to.re "aa"))) (re.++ (re.union (re.union (str.to.re "b") (str.to.re "c")) (re.union (str.to.re "ddd") (str.to.re "ee"))) (re.++ (re.+ (re.* (str.to.re "f"))) (re.++ (re.+ (re.union (str.to.re "gg") (str.to.re "hhh"))) (re.++ (re.* (re.* (str.to.re "ii"))) (re.* (re.* (str.to.re "j"))))))))))))))
(assert (<= 1 (str.len var0)))
(check-sat)