(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "00") (str.to.re "111"))) (re.++ (re.* (re.union (str.to.re "22") (str.to.re "33"))) (re.++ (re.union (re.+ (str.to.re "44")) (re.union (str.to.re "5") (str.to.re "66"))) (re.++ (re.union (re.* (str.to.re "77")) (re.* (str.to.re "888"))) (re.++ (re.+ (re.* (str.to.re "999"))) (re.++ (re.+ (re.union (str.to.re "aa") (str.to.re "bb"))) (re.++ (re.+ (re.* (str.to.re "ccc"))) (re.++ (re.+ (re.* (str.to.re "ddd"))) (re.++ (re.* (re.* (str.to.re "e"))) (re.* (re.* (re.* (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))))
(assert (<= 276 (str.len var0)))
(check-sat)
