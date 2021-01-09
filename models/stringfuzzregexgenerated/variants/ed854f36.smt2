(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "0"))) (re.++ (re.+ (re.* (str.to.re "111"))) (re.++ (re.union (re.+ (str.to.re "222")) (re.+ (str.to.re "3"))) (re.++ (re.union (re.union (str.to.re "44") (str.to.re "55")) (re.* (str.to.re "666"))) (re.++ (re.union (re.union (str.to.re "7") (str.to.re "88")) (re.+ (str.to.re "999"))) (re.++ (re.union (re.+ (str.to.re "a")) (re.union (str.to.re "bb") (str.to.re "ccc"))) (re.++ (re.* (re.* (str.to.re "ddd"))) (re.++ (re.union (re.union (str.to.re "ee") (str.to.re "f")) (re.* (str.to.re "g"))) (re.++ (re.+ (re.* (str.to.re "hhh"))) (re.union (re.union (str.to.re "iii") (str.to.re "j")) (re.* (str.to.re "kkk"))))))))))))))
(assert (<= 226 (str.len var0)))
(check-sat)
