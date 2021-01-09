(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "00") (str.to.re "111"))) (re.++ (re.+ (re.+ (str.to.re "2"))) (re.++ (re.+ (re.union (str.to.re "33") (str.to.re "444"))) (re.++ (re.+ (re.union (str.to.re "55") (str.to.re "666"))) (re.++ (re.+ (re.union (str.to.re "77") (str.to.re "888"))) (re.++ (re.+ (re.* (str.to.re "9"))) (re.++ (re.union (re.union (str.to.re "a") (str.to.re "bb")) (re.+ (str.to.re "c"))) (re.++ (re.+ (re.union (str.to.re "d") (str.to.re "e"))) (re.++ (re.+ (re.union (str.to.re "ff") (str.to.re "gg"))) (re.+ (re.* (str.to.re "h"))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)
