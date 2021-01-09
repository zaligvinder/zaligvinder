(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "0"))) (re.++ (re.+ (re.* (str.to.re "111"))) (re.++ (re.+ (re.union (str.to.re "2") (str.to.re "3"))) (re.++ (re.+ (re.+ (str.to.re "444"))) (re.++ (re.+ (re.union (str.to.re "55") (str.to.re "66"))) (re.++ (re.+ (re.union (str.to.re "7") (str.to.re "8"))) (re.++ (re.union (re.* (str.to.re "9")) (re.+ (str.to.re "aa"))) (re.++ (re.union (re.union (str.to.re "bbb") (str.to.re "cc")) (re.+ (str.to.re "d"))) (re.++ (re.union (re.* (str.to.re "eee")) (re.+ (str.to.re "f"))) (re.union (re.* (str.to.re "ggg")) (re.++ (str.to.re "hh") (str.to.re "hh"))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
