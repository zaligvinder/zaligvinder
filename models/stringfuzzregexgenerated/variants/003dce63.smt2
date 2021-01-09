(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.+ (re.* (str.to.re "22"))) (re.++ (re.union (re.union (str.to.re "3") (str.to.re "44")) (re.* (str.to.re "55"))) (re.++ (re.+ (re.* (str.to.re "66"))) (re.++ (re.* (re.* (str.to.re "7"))) (re.++ (re.+ (re.* (str.to.re "8"))) (re.++ (re.* (re.union (str.to.re "999") (str.to.re "aaa"))) (re.++ (re.union (re.union (str.to.re "bb") (str.to.re "cc")) (re.* (str.to.re "ddd"))) (re.++ (re.+ (re.* (str.to.re "e"))) (re.+ (re.+ (re.* (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))))
(assert (<= 151 (str.len var0)))
(check-sat)
