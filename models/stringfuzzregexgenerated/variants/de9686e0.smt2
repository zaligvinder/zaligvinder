(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "000")) (re.* (str.to.re "11"))) (re.++ (re.* (re.+ (str.to.re "2"))) (re.++ (re.* (re.union (str.to.re "33") (str.to.re "444"))) (re.++ (re.union (re.union (str.to.re "55") (str.to.re "66")) (re.union (str.to.re "7") (str.to.re "888"))) (re.++ (re.union (re.* (str.to.re "999")) (re.* (str.to.re "aaa"))) (re.++ (re.+ (re.+ (str.to.re "bb"))) (re.++ (re.* (re.+ (str.to.re "ccc"))) (re.++ (re.union (re.union (str.to.re "d") (str.to.re "eee")) (re.+ (str.to.re "ff"))) (re.++ (re.* (re.union (str.to.re "ggg") (str.to.re "h"))) (re.* (re.union (re.+ (re.* (re.* (re.* re.allchar)))) (str.to.re "jjj"))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
