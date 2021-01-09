(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "0")) (re.* (str.to.re "11"))) (re.++ (re.union (re.* (str.to.re "222")) (re.union (str.to.re "33") (str.to.re "44"))) (re.++ (re.+ (re.union (str.to.re "55") (str.to.re "666"))) (re.++ (re.+ (re.union (str.to.re "777") (str.to.re "8"))) (re.++ (re.* (re.+ (str.to.re "999"))) (re.++ (re.union (re.union (str.to.re "a") (str.to.re "b")) (re.+ (str.to.re "cc"))) (re.++ (re.+ (re.+ (str.to.re "ddd"))) (re.++ (re.union (re.* (str.to.re "e")) (re.+ (str.to.re "ff"))) (re.++ (re.union (re.* (str.to.re "gg")) (re.* (re.+ (re.* (re.* (re.* re.allchar)))))) (re.+ (re.+ (str.to.re "ii"))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
