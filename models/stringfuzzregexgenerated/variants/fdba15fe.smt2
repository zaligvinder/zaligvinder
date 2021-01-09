(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "0"))) (re.++ (re.* (re.* (str.to.re "11"))) (re.++ (re.* (re.+ (str.to.re "22"))) (re.++ (re.+ (re.+ (str.to.re "3"))) (re.++ (re.* (re.+ (str.to.re "444"))) (re.++ (re.+ (re.union (str.to.re "55") (str.to.re "666"))) (re.++ (re.* (re.union (str.to.re "77") (str.to.re "888"))) (re.++ (re.+ (re.+ (str.to.re "999"))) (re.++ (re.+ (re.* (str.to.re "aaa"))) (re.union (re.* (str.to.re "b")) (re.union (str.to.re "cc") (re.+ (re.+ (re.++ (str.to.re "") re.allchar))))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
