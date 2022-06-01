(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.+ (str.to_re "0")) (re.union (str.to_re "11") (str.to_re "2"))) (re.++ (re.union (re.union (str.to_re "33") (str.to_re "4")) (re.union (str.to_re "55") (str.to_re "666"))) (re.++ (re.union (re.+ (str.to_re "777")) (re.union (str.to_re "88") (str.to_re "9"))) (re.++ (re.* (re.union (str.to_re "aaa") (str.to_re "bb"))) (re.++ (re.+ (re.+ (str.to_re "c"))) (re.++ (re.+ (re.+ (str.to_re "dd"))) (re.++ (re.* (re.+ (str.to_re "ee"))) (re.++ (re.+ (re.+ (str.to_re "f"))) (re.++ (re.union (re.+ (str.to_re "gg")) (re.* (str.to_re "h"))) (re.union (re.+ (re.++ (re.* (re.* re.allchar)) (re.++ (re.+ (re.* re.allchar)) (re.* re.allchar)))) (re.* (str.to_re "jj"))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
