(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "00") (str.to.re "1")) (re.+ (str.to.re "2"))) (re.++ (re.union (re.* (str.to.re "333")) (re.union (str.to.re "44") (str.to.re "555"))) (re.++ (re.union (re.+ (str.to.re "6")) (re.+ (str.to.re "7"))) (re.++ (re.union (re.* (str.to.re "888")) (re.union (str.to.re "99") (str.to.re "aa"))) (re.++ (re.* (re.* (str.to.re "b"))) (re.++ (re.+ (re.* (str.to.re "ccc"))) (re.++ (re.* (re.+ (str.to.re "d"))) (re.++ (re.* (re.* (str.to.re "eee"))) (re.++ (re.union (re.* (str.to.re "ff")) (re.union (str.to.re "gg") (str.to.re "h"))) (re.union (re.union (str.to.re "ii") (str.to.re "jjj")) (re.++ (str.to.re "kk") (str.to.re "kk"))))))))))))))
(assert (<= 201 (str.len var0)))
(check-sat)
