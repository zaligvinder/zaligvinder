(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "0")) (re.union (str.to.re "11") (str.to.re "2"))) (re.++ (re.union (re.union (str.to.re "33") (str.to.re "4")) (re.union (str.to.re "55") (str.to.re "666"))) (re.++ (re.union (re.+ (str.to.re "777")) (re.union (str.to.re "88") (str.to.re "9"))) (re.++ (re.* (re.union (str.to.re "aaa") (str.to.re "bb"))) (re.++ (re.+ (re.+ (str.to.re "c"))) (re.++ (re.+ (re.+ (str.to.re "dd"))) (re.++ (re.* (re.+ (str.to.re "ee"))) (re.++ (re.+ (re.+ (str.to.re "f"))) (re.++ (re.union (re.+ (str.to.re "gg")) (re.* (str.to.re "h"))) (re.union (re.+ (re.++ (re.* (re.* re.allchar)) (re.++ (re.+ (re.* re.allchar)) (re.* re.allchar)))) (re.* (str.to.re "jj"))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
