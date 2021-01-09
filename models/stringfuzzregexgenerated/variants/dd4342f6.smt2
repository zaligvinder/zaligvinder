(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "0"))) (re.++ (re.* (re.union (str.to.re "11") (str.to.re "2"))) (re.++ (re.+ (re.union (str.to.re "333") (str.to.re "4"))) (re.++ (re.* (re.* (str.to.re "55"))) (re.++ (re.union (re.union (str.to.re "66") (str.to.re "77")) (re.+ (str.to.re "8"))) (re.++ (re.+ (re.+ (str.to.re "9"))) (re.++ (re.union (re.* (str.to.re "a")) (re.union (str.to.re "bb") (str.to.re "c"))) (re.++ (re.+ (re.union (str.to.re "ddd") (str.to.re "eee"))) (re.++ (re.* (re.* (str.to.re "fff"))) (re.+ (re.++ (str.to.re "g") (str.to.re "hhh"))))))))))))))
(assert (<= 151 (str.len var0)))
(check-sat)
