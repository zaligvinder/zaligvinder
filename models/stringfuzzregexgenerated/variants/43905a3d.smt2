(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "00")) (re.+ (str.to.re "11"))) (re.++ (re.* (re.+ (str.to.re "22"))) (re.++ (re.* (re.union (str.to.re "333") (str.to.re "444"))) (re.++ (re.union (re.union (str.to.re "5") (str.to.re "66")) (re.+ (str.to.re "7"))) (re.++ (re.union (re.union (str.to.re "888") (str.to.re "9")) (re.union (str.to.re "aaa") (str.to.re "bb"))) (re.++ (re.union (re.union (str.to.re "c") (str.to.re "d")) (re.* (str.to.re "ee"))) (re.++ (re.union (re.union (str.to.re "ff") (str.to.re "ggg")) (re.* (str.to.re "h"))) (re.++ (re.* (re.+ (str.to.re "ii"))) (re.++ (re.+ (re.* (str.to.re "jjj"))) (re.union (re.* (re.+ (re.* (str.to.re "")))) (re.+ (str.to.re "l"))))))))))))))
(assert (<= 251 (str.len var0)))
(check-sat)
