(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "00"))) (re.++ (re.union (re.* (str.to.re "1")) (re.* (str.to.re "2"))) (re.++ (re.* (re.union (str.to.re "333") (str.to.re "44"))) (re.++ (re.+ (re.* (str.to.re "5"))) (re.++ (re.union (re.* (str.to.re "666")) (re.+ (str.to.re "7"))) (re.++ (re.union (re.union (str.to.re "8") (str.to.re "999")) (re.+ (str.to.re "a"))) (re.++ (re.+ (re.* (str.to.re "bb"))) (re.++ (re.+ (re.* (str.to.re "cc"))) (re.++ (re.union (re.union (str.to.re "dd") (str.to.re "e")) (re.union (str.to.re "fff") (str.to.re "gg"))) (re.* (re.++ (str.to.re "hhh") (str.to.re "hhh"))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
