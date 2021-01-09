(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "0"))) (re.++ (re.+ (re.union (str.to.re "1") (str.to.re "222"))) (re.++ (re.union (re.union (str.to.re "33") (str.to.re "44")) (re.union (str.to.re "55") (str.to.re "666"))) (re.++ (re.+ (re.* (str.to.re "777"))) (re.++ (re.* (re.union (str.to.re "88") (str.to.re "999"))) (re.++ (re.+ (re.* (str.to.re "a"))) (re.++ (re.* (re.union (str.to.re "b") (str.to.re "c"))) (re.++ (re.union (re.+ (str.to.re "dd")) (re.* (str.to.re "ee"))) (re.++ (re.+ (re.+ (str.to.re "fff"))) (re.* (re.+ (str.to.re "gg"))))))))))))))
(assert (<= 251 (str.len var0)))
(check-sat)
