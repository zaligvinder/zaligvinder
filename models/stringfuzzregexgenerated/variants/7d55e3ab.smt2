(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "000") (str.to.re "11"))) (re.++ (re.union (re.union (str.to.re "22") (str.to.re "3")) (re.+ (str.to.re "4"))) (re.++ (re.+ (re.union (str.to.re "5") (str.to.re "666"))) (re.++ (re.union (re.union (str.to.re "77") (str.to.re "88")) (re.* (str.to.re "999"))) (re.++ (re.* (re.+ (str.to.re "a"))) (re.++ (re.+ (re.* (str.to.re "bb"))) (re.++ (re.* (re.union (str.to.re "c") (str.to.re "dd"))) (re.++ (re.* (re.union (str.to.re "e") (str.to.re "f"))) (re.++ (re.+ (re.+ (str.to.re "g"))) (re.* (re.* (str.to.re "h"))))))))))))))
(assert (<= 226 (str.len var0)))
(check-sat)
