(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "00")) (re.+ (str.to.re "111"))) (re.++ (re.+ (re.* (str.to.re "2"))) (re.++ (re.* (re.union (str.to.re "33") (str.to.re "444"))) (re.++ (re.* (re.* (str.to.re "5"))) (re.++ (re.union (re.+ (str.to.re "6")) (re.+ (str.to.re "7"))) (re.++ (re.+ (re.union (str.to.re "88") (str.to.re "999"))) (re.++ (re.union (re.union (str.to.re "aaa") (str.to.re "bb")) (re.* (str.to.re "c"))) (re.++ (re.union (re.+ (str.to.re "d")) (re.union (str.to.re "eee") (str.to.re "f"))) (re.++ (re.union (re.* (str.to.re "g")) (re.+ (str.to.re "h"))) (re.+ (re.* (str.to.re "ii"))))))))))))))
(assert (<= 476 (str.len var0)))
(check-sat)