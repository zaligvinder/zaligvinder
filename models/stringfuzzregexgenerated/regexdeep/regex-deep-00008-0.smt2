(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (re.union (re.+ (re.* (re.union (re.union (re.union (str.to.re "00") (str.to.re "1")) (re.* (str.to.re "2"))) (re.+ (re.* (str.to.re "333")))))) (re.+ (re.union (re.+ (re.* (re.+ (str.to.re "44")))) (re.+ (re.+ (re.+ (str.to.re "5")))))))) (re.union (re.union (re.* (re.+ (re.+ (re.+ (re.union (str.to.re "66") (str.to.re "7")))))) (re.+ (re.* (re.+ (re.+ (re.* (str.to.re "8"))))))) (re.+ (re.* (re.* (re.union (re.+ (re.+ (str.to.re "9"))) (re.+ (re.union (str.to.re "aaa") (str.to.re "bb"))))))))) (re.* (re.+ (re.* (re.* (re.* (re.* (re.* (re.* (str.to.re "cc"))))))))))))
(assert (<= 15 (str.len var0)))
(check-sat)