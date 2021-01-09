(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "00"))) (re.++ (re.+ (re.* (str.to.re "11"))) (re.++ (re.* (re.* (str.to.re "2"))) (re.++ (re.* (re.* (str.to.re "33"))) (re.++ (re.union (re.union (str.to.re "44") (str.to.re "555")) (re.+ (str.to.re "6"))) (re.++ (re.union (re.union (str.to.re "77") (str.to.re "888")) (re.+ (str.to.re "99"))) (re.++ (re.union (re.* (str.to.re "a")) (re.+ (str.to.re "bb"))) (re.++ (re.* (re.union (str.to.re "c") (str.to.re "ddd"))) (re.+ (re.+ (str.to.re "e")))))))))))))
(check-sat)