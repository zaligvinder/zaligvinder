(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "0")) (re.* (str.to.re "11"))) (re.++ (re.* (re.union (str.to.re "2") (str.to.re "33"))) (re.++ (re.* (re.union (str.to.re "4") (str.to.re "55"))) (re.++ (re.* (re.* (str.to.re "666"))) (re.++ (re.union (re.union (str.to.re "7") (str.to.re "8")) (re.union (str.to.re "9") (str.to.re "aaa"))) (re.++ (re.+ (re.* (str.to.re "bb"))) (re.++ (re.union (re.* (str.to.re "c")) (re.union (str.to.re "ddd") (str.to.re "eee"))) (re.++ (re.* (re.* (str.to.re "f"))) (re.++ (re.+ (re.+ (str.to.re "g"))) (re.+ (re.+ (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))
(assert (<= 201 (str.len var0)))
(check-sat)
