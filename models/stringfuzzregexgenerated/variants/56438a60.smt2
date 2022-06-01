(declare-fun var0 () String)
(assert (str.in_re var0 (re.++ (re.union (re.union (str.to_re "00") (str.to_re "1")) (re.+ (str.to_re "2"))) (re.++ (re.union (re.* (str.to_re "333")) (re.union (str.to_re "44") (str.to_re "555"))) (re.++ (re.union (re.+ (str.to_re "6")) (re.+ (str.to_re "7"))) (re.++ (re.union (re.* (str.to_re "888")) (re.union (str.to_re "99") (str.to_re "aa"))) (re.++ (re.* (re.* (str.to_re "b"))) (re.++ (re.+ (re.* (str.to_re "ccc"))) (re.++ (re.* (re.+ (str.to_re "d"))) (re.++ (re.* (re.* (str.to_re "eee"))) (re.++ (re.union (re.* (str.to_re "ff")) (re.union (str.to_re "gg") (str.to_re "h"))) (re.union (re.* (str.to_re "ii")) (re.* (str.to_re "kk"))))))))))))))
(assert (<= 201 (str.len var0)))
(check-sat)
