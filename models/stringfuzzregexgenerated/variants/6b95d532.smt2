(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "00"))) (re.++ (re.* (re.union (str.to.re "11") (str.to.re "222"))) (re.++ (re.+ (re.+ (str.to.re "3"))) (re.++ (re.union (re.union (str.to.re "44") (str.to.re "555")) (re.* (str.to.re "66"))) (re.++ (re.+ (re.+ (str.to.re "77"))) (re.++ (re.* (re.union (str.to.re "888") (str.to.re "999"))) (re.++ (re.* (re.union (str.to.re "a") (str.to.re "bbb"))) (re.++ (re.* (re.+ (str.to.re "cc"))) (re.++ (re.union (re.union (str.to.re "ddd") (str.to.re "eee")) (re.* (str.to.re "f"))) (re.* (re.* (str.to.re "ggg"))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)
