(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "00"))) (re.++ (re.union (re.union (str.to.re "11") (str.to.re "222")) (re.union (str.to.re "333") (str.to.re "44"))) (re.++ (re.+ (re.+ (str.to.re "55"))) (re.++ (re.+ (re.* (str.to.re "666"))) (re.++ (re.union (re.* (str.to.re "7")) (re.* (str.to.re "8"))) (re.++ (re.+ (re.+ (str.to.re "9"))) (re.++ (re.+ (re.+ (str.to.re "aa"))) (re.++ (re.union (re.+ (str.to.re "bbb")) (re.* (str.to.re "ccc"))) (re.++ (re.+ (re.+ (str.to.re "dd"))) (re.+ (re.* (re.+ (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)
