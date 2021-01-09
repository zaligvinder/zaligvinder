(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "000")) (re.* (str.to.re "11"))) (re.++ (re.union (re.+ (str.to.re "222")) (re.union (str.to.re "33") (str.to.re "444"))) (re.++ (re.+ (re.* (str.to.re "55"))) (re.++ (re.+ (re.+ (str.to.re "66"))) (re.++ (re.union (re.union (str.to.re "77") (str.to.re "8")) (re.+ (str.to.re "99"))) (re.++ (re.* (re.union (str.to.re "aa") (str.to.re "b"))) (re.++ (re.union (re.* (str.to.re "c")) (re.* (str.to.re "ddd"))) (re.++ (re.+ (re.+ (str.to.re "eee"))) (re.++ (re.+ (re.* (str.to.re "f"))) (re.union (re.+ (str.to.re "gg")) (re.+ (re.+ (re.++ (re.+ re.allchar) (re.* re.allchar))))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
