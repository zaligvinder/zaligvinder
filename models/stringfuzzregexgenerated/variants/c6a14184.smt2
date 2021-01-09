(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "000"))) (re.++ (re.* (re.* (str.to.re "1"))) (re.++ (re.* (re.union (str.to.re "222") (str.to.re "333"))) (re.++ (re.* (re.* (str.to.re "44"))) (re.++ (re.* (re.union (str.to.re "55") (str.to.re "6"))) (re.++ (re.+ (re.union (str.to.re "7") (str.to.re "88"))) (re.++ (re.+ (re.+ (str.to.re "99"))) (re.++ (re.* (re.* (str.to.re "a"))) (re.++ (re.union (re.+ (str.to.re "b")) (re.+ (str.to.re "c"))) (re.union (re.union (str.to.re "ddd") (str.to.re "e")) (re.+ (re.* (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
