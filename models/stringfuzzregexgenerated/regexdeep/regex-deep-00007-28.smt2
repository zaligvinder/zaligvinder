(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (re.* (re.union (re.union (re.+ (re.+ (str.to.re "000"))) (re.+ (re.union (str.to.re "1") (str.to.re "22")))) (re.union (re.* (re.union (str.to.re "33") (str.to.re "444"))) (re.* (re.+ (str.to.re "55")))))))) (re.* (re.* (re.+ (re.union (re.+ (re.union (re.union (str.to.re "66") (str.to.re "77")) (re.* (str.to.re "8")))) (re.* (re.* (re.+ (str.to.re "9")))))))))))
(assert (<= 15 (str.len var0)))
(check-sat)