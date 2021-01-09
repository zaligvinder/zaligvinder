(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "0")) (re.* (str.to.re "1"))) (re.++ (re.+ (re.union (str.to.re "22") (str.to.re "333"))) (re.++ (re.union (re.* (str.to.re "4")) (re.+ (str.to.re "555"))) (re.++ (re.* (re.union (str.to.re "6") (str.to.re "77"))) (re.++ (re.union (re.* (str.to.re "888")) (re.* (str.to.re "99"))) (re.++ (re.* (re.* (str.to.re "aaa"))) (re.++ (re.+ (re.+ (str.to.re "bbb"))) (re.++ (re.union (re.union (str.to.re "c") (str.to.re "ddd")) (re.+ (str.to.re "e"))) (re.++ (re.union (re.* (str.to.re "f")) (re.union (str.to.re "g") (str.to.re "h"))) (re.+ (re.++ (str.to.re "ii") (str.to.re "jj"))))))))))))))
(assert (<= 201 (str.len var0)))
(check-sat)
