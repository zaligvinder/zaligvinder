(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.union (re.* (str.to.re "222")) (re.* (str.to.re "3"))) (re.++ (re.union (re.* (str.to.re "444")) (re.+ (str.to.re "55"))) (re.++ (re.* (re.union (str.to.re "6") (str.to.re "777"))) (re.++ (re.* (re.union (str.to.re "88") (str.to.re "9"))) (re.++ (re.* (re.+ (str.to.re "aaa"))) (re.++ (re.* (re.union (str.to.re "bb") (str.to.re "cc"))) (re.++ (re.union (re.+ (str.to.re "d")) (re.* (str.to.re "eee"))) (re.++ (re.+ (re.+ (str.to.re "ff"))) (re.union (re.* (str.to.re "ggg")) (re.+ (str.to.re "hhh"))))))))))))))
(assert (<= 1 (str.len var0)))
(check-sat)