(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "0"))) (re.++ (re.+ (re.+ (str.to.re "11"))) (re.++ (re.+ (re.+ (str.to.re "2"))) (re.++ (re.+ (re.* (str.to.re "33"))) (re.++ (re.union (re.union (str.to.re "44") (str.to.re "55")) (re.* (str.to.re "666"))) (re.++ (re.union (re.+ (str.to.re "7")) (re.+ (str.to.re "8"))) (re.++ (re.* (re.union (str.to.re "999") (str.to.re "a"))) (re.++ (re.+ (re.* (str.to.re "bb"))) (re.++ (re.* (re.* (str.to.re "ccc"))) (re.union (re.* (str.to.re "d")) (re.union (re.* (re.++ (re.+ (re.++ (str.to.re "") (str.to.re ""))) (re.+ re.allchar))) (str.to.re "ff"))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)
