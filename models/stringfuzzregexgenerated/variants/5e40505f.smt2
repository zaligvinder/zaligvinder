(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "000"))) (re.++ (re.+ (re.* (str.to.re "11"))) (re.++ (re.union (re.+ (str.to.re "22")) (re.union (str.to.re "333") (str.to.re "44"))) (re.++ (re.+ (re.* (str.to.re "5"))) (re.++ (re.+ (re.* (str.to.re "666"))) (re.++ (re.* (re.union (str.to.re "777") (str.to.re "8"))) (re.++ (re.union (re.union (str.to.re "999") (str.to.re "a")) (re.* (str.to.re "b"))) (re.++ (re.union (re.+ (str.to.re "cc")) (re.* (str.to.re "ddd"))) (re.++ (re.* (re.* (str.to.re "e"))) (re.+ (re.* (str.to.re "f"))))))))))))))
(assert (<= 276 (str.len var0)))
(check-sat)
