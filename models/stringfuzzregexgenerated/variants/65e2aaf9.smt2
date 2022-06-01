(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.union (str.to_re "0") (str.to_re "111")) (re.* (str.to_re "222"))) (re.++ (re.* (re.+ (str.to_re "333"))) (re.++ (re.+ (re.union (str.to_re "44") (str.to_re "55"))) (re.++ (re.+ (re.union (str.to_re "666") (str.to_re "777"))) (re.++ (re.+ (re.union (str.to_re "8") (str.to_re "999"))) (re.++ (re.+ (re.* (str.to_re "a"))) (re.++ (re.union (re.* (str.to_re "bbb")) (re.+ (str.to_re "ccc"))) (re.++ (re.* (re.* (str.to_re "ddd"))) (re.++ (re.union (re.union (str.to_re "eee") (str.to_re "ff")) (re.union (str.to_re "ggg") (str.to_re "h"))) (re.* (re.* (str.to_re "i"))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
