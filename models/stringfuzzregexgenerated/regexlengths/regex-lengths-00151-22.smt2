(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "0"))) (re.++ (re.+ (re.+ (str.to.re "11"))) (re.++ (re.union (re.+ (str.to.re "22")) (re.union (str.to.re "3") (str.to.re "444"))) (re.++ (re.* (re.* (str.to.re "5"))) (re.++ (re.union (re.* (str.to.re "6")) (re.union (str.to.re "77") (str.to.re "888"))) (re.++ (re.union (re.* (str.to.re "9")) (re.union (str.to.re "aaa") (str.to.re "bbb"))) (re.++ (re.* (re.union (str.to.re "c") (str.to.re "d"))) (re.++ (re.+ (re.* (str.to.re "e"))) (re.++ (re.+ (re.* (str.to.re "f"))) (re.* (re.* (str.to.re "g"))))))))))))))
(assert (<= 151 (str.len var0)))
(check-sat)