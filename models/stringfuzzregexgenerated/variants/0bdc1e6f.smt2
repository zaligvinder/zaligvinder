(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "00"))) (re.++ (re.* (re.+ (str.to.re "1"))) (re.++ (re.union (re.+ (str.to.re "22")) (re.* (str.to.re "333"))) (re.++ (re.+ (re.union (str.to.re "44") (str.to.re "55"))) (re.++ (re.* (re.union (str.to.re "666") (str.to.re "77"))) (re.++ (re.+ (re.+ (str.to.re "8"))) (re.++ (re.union (re.union (str.to.re "9") (str.to.re "a")) (re.+ (str.to.re "b"))) (re.++ (re.union (re.* (str.to.re "c")) (re.* (str.to.re "ddd"))) (re.++ (re.* (re.* (str.to.re "eee"))) (re.* (re.++ (str.to.re "ff") (str.to.re "ff"))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
