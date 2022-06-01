(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.union (str.to_re "0") (str.to_re "1")) (re.+ (str.to_re "222"))) (re.++ (re.+ (re.union (str.to_re "333") (str.to_re "4"))) (re.++ (re.union (re.+ (str.to_re "555")) (re.union (str.to_re "6") (str.to_re "777"))) (re.++ (re.union (re.* (str.to_re "888")) (re.union (str.to_re "99") (str.to_re "aaa"))) (re.++ (re.+ (re.+ (str.to_re "bb"))) (re.++ (re.union (re.+ (str.to_re "c")) (re.union (str.to_re "d") (str.to_re "e"))) (re.++ (re.+ (re.+ (str.to_re "fff"))) (re.++ (re.union (re.+ (str.to_re "gg")) (re.+ (str.to_re "h"))) (re.++ (re.union (re.* (str.to_re "ii")) (re.union (str.to_re "j") (str.to_re "k"))) (re.+ (re.* (str.to_re "l"))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
