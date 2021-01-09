(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "0"))) (re.++ (re.union (re.+ (str.to.re "1")) (re.+ (str.to.re "2"))) (re.++ (re.union (re.union (str.to.re "33") (str.to.re "444")) (re.union (str.to.re "555") (str.to.re "6"))) (re.++ (re.* (re.union (str.to.re "77") (str.to.re "8"))) (re.++ (re.union (re.* (str.to.re "99")) (re.union (str.to.re "a") (str.to.re "bb"))) (re.++ (re.* (re.union (str.to.re "c") (str.to.re "ddd"))) (re.++ (re.union (re.union (str.to.re "e") (str.to.re "f")) (re.union (str.to.re "ggg") (str.to.re "h"))) (re.++ (re.+ (re.* (str.to.re "i"))) (re.++ (re.* (re.+ (str.to.re "jjj"))) (re.+ (re.union (str.to.re "k") (re.+ (re.* re.allchar)))))))))))))))
(assert (<= 151 (str.len var0)))
(check-sat)
