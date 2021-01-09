(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "00"))) (re.++ (re.union (re.+ (str.to.re "1")) (re.* (str.to.re "22"))) (re.++ (re.* (re.union (str.to.re "33") (str.to.re "444"))) (re.++ (re.+ (re.+ (str.to.re "55"))) (re.++ (re.* (re.+ (str.to.re "666"))) (re.++ (re.* (re.union (str.to.re "77") (str.to.re "8"))) (re.++ (re.union (re.union (str.to.re "9") (str.to.re "a")) (re.union (str.to.re "bb") (str.to.re "c"))) (re.++ (re.union (re.* (str.to.re "ddd")) (re.union (str.to.re "eee") (str.to.re "f"))) (re.++ (re.union (re.+ (str.to.re "ggg")) (re.+ (str.to.re "h"))) (re.+ (re.* (re.+ (re.++ (re.+ re.allchar) (re.* re.allchar))))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
