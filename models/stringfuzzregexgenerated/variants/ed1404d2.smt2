(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "0")) (re.union (str.to.re "11") (str.to.re "2"))) (re.++ (re.+ (re.* (str.to.re "3"))) (re.++ (re.union (re.union (str.to.re "444") (str.to.re "555")) (re.+ (str.to.re "66"))) (re.++ (re.+ (re.union (str.to.re "77") (str.to.re "8"))) (re.++ (re.union (re.+ (str.to.re "9")) (re.+ (str.to.re "a"))) (re.++ (re.* (re.union (str.to.re "bb") (str.to.re "cc"))) (re.++ (re.* (re.* (str.to.re "d"))) (re.++ (re.union (re.union (str.to.re "ee") (str.to.re "f")) (re.union (str.to.re "ggg") (str.to.re "h"))) (re.++ (re.union (re.union (str.to.re "i") (str.to.re "jj")) (re.+ (str.to.re "kkk"))) (re.* (re.* (str.to.re "l"))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
