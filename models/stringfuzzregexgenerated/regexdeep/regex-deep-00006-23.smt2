(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (re.* (re.union (re.* (re.+ (str.to.re "00"))) (re.+ (re.* (str.to.re "11"))))))) (re.* (re.+ (re.union (re.+ (re.* (re.union (str.to.re "22") (str.to.re "3")))) (re.union (re.union (re.* (str.to.re "444")) (re.* (str.to.re "555"))) (re.+ (re.union (str.to.re "66") (str.to.re "7"))))))))))
(assert (<= 15 (str.len var0)))
(check-sat)