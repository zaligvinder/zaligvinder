(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (re.* (re.* (re.union (re.union (re.union (str.to.re "00") (str.to.re "11")) (re.+ (str.to.re "2"))) (re.union (re.+ (str.to.re "33")) (re.+ (str.to.re "444")))))) (re.* (re.* (re.* (re.* (re.+ (str.to.re "555")))))))) (re.+ (re.+ (re.+ (re.* (re.* (re.union (re.union (str.to.re "66") (str.to.re "777")) (re.* (str.to.re "8")))))))))))
(assert (<= 15 (str.len var0)))
(check-sat)