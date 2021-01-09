(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "00"))) (re.++ (re.* (re.* (str.to.re "11"))) (re.++ (re.+ (re.union (str.to.re "22") (str.to.re "3"))) (re.++ (re.union (re.* (str.to.re "44")) (re.union (str.to.re "55") (str.to.re "666"))) (re.++ (re.union (re.* (str.to.re "7")) (re.+ (str.to.re "888"))) (re.++ (re.* (re.* (str.to.re "99"))) (re.++ (re.+ (re.* (str.to.re "aa"))) (re.++ (re.* (re.+ (str.to.re "bb"))) (re.++ (re.union (re.+ (str.to.re "c")) (re.+ (str.to.re "ddd"))) (re.* (re.+ (re.+ (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))))
(assert (<= 276 (str.len var0)))
(check-sat)
