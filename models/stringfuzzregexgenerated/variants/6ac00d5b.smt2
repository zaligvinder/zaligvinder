(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "00"))) (re.++ (re.* (re.* (str.to.re "111"))) (re.++ (re.union (re.* (str.to.re "22")) (re.union (str.to.re "33") (str.to.re "444"))) (re.++ (re.union (re.union (str.to.re "55") (str.to.re "666")) (re.+ (str.to.re "77"))) (re.++ (re.+ (re.* (str.to.re "888"))) (re.++ (re.+ (re.union (str.to.re "999") (str.to.re "a"))) (re.++ (re.union (re.* (str.to.re "b")) (re.union (str.to.re "c") (str.to.re "dd"))) (re.++ (re.union (re.union (str.to.re "eee") (str.to.re "fff")) (re.+ (str.to.re "g"))) (re.++ (re.+ (re.* (str.to.re "hh"))) (re.* (re.+ (re.+ (re.++ (re.+ re.allchar) (re.* re.allchar))))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
