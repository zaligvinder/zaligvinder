(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.* (re.* (str.to_re "000"))) (re.++ (re.union (re.union (str.to_re "1") (str.to_re "22")) (re.* (str.to_re "33"))) (re.++ (re.union (re.union (str.to_re "44") (str.to_re "555")) (re.* (str.to_re "6"))) (re.++ (re.union (re.union (str.to_re "777") (str.to_re "888")) (re.union (str.to_re "9") (str.to_re "aaa"))) (re.++ (re.+ (re.* (str.to_re "bb"))) (re.++ (re.union (re.* (str.to_re "cc")) (re.+ (str.to_re "d"))) (re.++ (re.* (re.* (str.to_re "ee"))) (re.++ (re.union (re.+ (str.to_re "fff")) (re.* (str.to_re "gg"))) (re.++ (re.* (re.* (str.to_re "h"))) (re.* (re.+ (str.to_re "i"))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
