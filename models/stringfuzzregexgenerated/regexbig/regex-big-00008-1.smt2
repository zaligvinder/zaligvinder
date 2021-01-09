(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "00") (str.to.re "11"))) (re.++ (re.+ (re.* (str.to.re "222"))) (re.++ (re.union (re.* (str.to.re "333")) (re.union (str.to.re "44") (str.to.re "5"))) (re.++ (re.* (re.union (str.to.re "6") (str.to.re "7"))) (re.++ (re.union (re.union (str.to.re "888") (str.to.re "999")) (re.* (str.to.re "aa"))) (re.++ (re.union (re.* (str.to.re "b")) (re.+ (str.to.re "cc"))) (re.++ (re.+ (re.+ (str.to.re "ddd"))) (re.* (re.union (str.to.re "e") (str.to.re "ff"))))))))))))
(check-sat)