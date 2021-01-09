(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "0"))) (re.++ (re.union (re.* (str.to.re "111")) (re.+ (str.to.re "22"))) (re.++ (re.union (re.union (str.to.re "33") (str.to.re "44")) (re.* (str.to.re "55"))) (re.++ (re.* (re.* (str.to.re "66"))) (re.++ (re.union (re.union (str.to.re "7") (str.to.re "88")) (re.+ (str.to.re "99"))) (re.++ (re.union (re.+ (str.to.re "a")) (re.+ (str.to.re "b"))) (re.++ (re.union (re.union (str.to.re "ccc") (str.to.re "dd")) (re.union (str.to.re "eee") (str.to.re "ff"))) (re.++ (re.union (re.+ (str.to.re "g")) (re.union (str.to.re "hh") (str.to.re "ii"))) (re.++ (re.+ (re.union (str.to.re "jjj") (str.to.re "kkk"))) (re.* (re.* (str.to.re "ll"))))))))))))))
(assert (<= 226 (str.len var0)))
(check-sat)
