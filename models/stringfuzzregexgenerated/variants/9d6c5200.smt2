(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "00")) (re.+ (str.to.re "1"))) (re.++ (re.+ (re.union (str.to.re "222") (str.to.re "3"))) (re.++ (re.* (re.union (str.to.re "44") (str.to.re "55"))) (re.++ (re.union (re.union (str.to.re "6") (str.to.re "777")) (re.union (str.to.re "8") (str.to.re "99"))) (re.++ (re.+ (re.union (str.to.re "aa") (str.to.re "bbb"))) (re.++ (re.union (re.* (str.to.re "ccc")) (re.union (str.to.re "dd") (str.to.re "ee"))) (re.++ (re.+ (re.union (str.to.re "ff") (str.to.re "g"))) (re.++ (re.* (re.+ (str.to.re "h"))) (re.++ (re.* (re.union (str.to.re "ii") (str.to.re "jjj"))) (re.+ (re.+ (str.to.re "k"))))))))))))))
(assert (<= 251 (str.len var0)))
(check-sat)
