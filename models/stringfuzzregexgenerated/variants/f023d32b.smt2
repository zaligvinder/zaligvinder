(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.* (str.to_re "0")) (re.* (str.to_re "1"))) (re.++ (re.+ (re.union (str.to_re "22") (str.to_re "333"))) (re.++ (re.union (re.* (str.to_re "4")) (re.+ (str.to_re "555"))) (re.++ (re.* (re.union (str.to_re "6") (str.to_re "77"))) (re.++ (re.union (re.* (str.to_re "888")) (re.* (str.to_re "99"))) (re.++ (re.* (re.* (str.to_re "aaa"))) (re.++ (re.+ (re.+ (str.to_re "bbb"))) (re.++ (re.union (re.union (str.to_re "c") (str.to_re "ddd")) (re.+ (str.to_re "e"))) (re.++ (re.union (re.* (str.to_re "f")) (re.union (str.to_re "g") (str.to_re "h"))) (re.+ (re.* (str.to_re "ii"))))))))))))))
(assert (<= 201 (str.len var0)))
(check-sat)
