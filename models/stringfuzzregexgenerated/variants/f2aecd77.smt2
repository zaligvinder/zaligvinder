(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "0"))) (re.++ (re.+ (re.* (str.to.re "11"))) (re.++ (re.* (re.union (str.to.re "22") (str.to.re "33"))) (re.++ (re.union (re.union (str.to.re "44") (str.to.re "555")) (re.+ (str.to.re "66"))) (re.++ (re.* (re.* (str.to.re "77"))) (re.++ (re.* (re.* (str.to.re "888"))) (re.++ (re.* (re.union (str.to.re "9") (str.to.re "aa"))) (re.++ (re.* (re.+ (str.to.re "b"))) (re.++ (re.* (re.+ (str.to.re "ccc"))) (re.+ (re.union (re.+ (re.* (re.++ (re.++ (str.to.re "") (str.to.re "")) (re.++ (str.to.re "") (str.to.re ""))))) (str.to.re "ee"))))))))))))))
(assert (<= 276 (str.len var0)))
(check-sat)
