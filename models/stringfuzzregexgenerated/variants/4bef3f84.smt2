(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "0"))) (re.++ (re.+ (re.+ (str.to.re "1"))) (re.++ (re.* (re.* (str.to.re "2"))) (re.++ (re.union (re.union (str.to.re "33") (str.to.re "4")) (re.* (str.to.re "55"))) (re.++ (re.+ (re.union (str.to.re "6") (str.to.re "7"))) (re.++ (re.union (re.+ (str.to.re "88")) (re.* (str.to.re "99"))) (re.++ (re.union (re.+ (str.to.re "aa")) (re.+ (str.to.re "b"))) (re.++ (re.union (re.* (str.to.re "ccc")) (re.union (str.to.re "ddd") (str.to.re "eee"))) (re.++ (re.union (re.union (str.to.re "ff") (str.to.re "ggg")) (re.+ (str.to.re "hhh"))) (re.+ (re.* (str.to.re "iii"))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
