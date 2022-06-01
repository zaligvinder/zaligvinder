(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.+ (re.* (str.to_re "00"))) (re.++ (re.union (re.+ (str.to_re "1")) (re.* (str.to_re "22"))) (re.++ (re.* (re.union (str.to_re "33") (str.to_re "444"))) (re.++ (re.+ (re.+ (str.to_re "55"))) (re.++ (re.* (re.+ (str.to_re "666"))) (re.++ (re.* (re.union (str.to_re "77") (str.to_re "8"))) (re.++ (re.union (re.union (str.to_re "9") (str.to_re "a")) (re.union (str.to_re "bb") (str.to_re "c"))) (re.++ (re.union (re.* (str.to_re "ddd")) (re.union (str.to_re "eee") (str.to_re "f"))) (re.++ (re.union (re.+ (str.to_re "ggg")) (re.+ (str.to_re "h"))) (re.+ (re.* (re.+ (re.++ (re.+ re.allchar) (re.* re.allchar))))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
