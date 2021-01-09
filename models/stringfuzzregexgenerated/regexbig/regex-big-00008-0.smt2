(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "000") (str.to.re "1")) (re.+ (str.to.re "222"))) (re.++ (re.+ (re.union (str.to.re "33") (str.to.re "44"))) (re.++ (re.union (re.* (str.to.re "555")) (re.+ (str.to.re "66"))) (re.++ (re.* (re.union (str.to.re "7") (str.to.re "888"))) (re.++ (re.* (re.+ (str.to.re "99"))) (re.++ (re.+ (re.* (str.to.re "a"))) (re.++ (re.+ (re.* (str.to.re "b"))) (re.+ (re.* (str.to.re "cc"))))))))))))
(check-sat)