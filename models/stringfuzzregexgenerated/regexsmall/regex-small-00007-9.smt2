(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "000"))) (re.++ (re.* (re.* (str.to.re "11"))) (re.++ (re.+ (re.* (str.to.re "222"))) (re.++ (re.union (re.union (str.to.re "333") (str.to.re "44")) (re.* (str.to.re "5"))) (re.++ (re.* (re.+ (str.to.re "666"))) (re.++ (re.+ (re.+ (str.to.re "7"))) (re.+ (re.+ (str.to.re "888")))))))))))
(check-sat)