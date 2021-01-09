(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "0"))) (re.++ (re.* (re.* (str.to.re "1"))) (re.++ (re.* (re.+ (str.to.re "2"))) (re.++ (re.+ (re.union (str.to.re "33") (str.to.re "44"))) (re.++ (re.+ (re.+ (str.to.re "5"))) (re.++ (re.+ (re.+ (str.to.re "66"))) (re.++ (re.* (re.+ (str.to.re "7"))) (re.++ (re.* (re.union (str.to.re "88") (str.to.re "9"))) (re.++ (re.+ (re.* (str.to.re "a"))) (re.union (re.union (str.to.re "bbb") (str.to.re "c")) (re.union (re.+ (re.* (re.++ (re.++ (str.to.re "") (str.to.re "")) (re.++ (str.to.re "") (str.to.re ""))))) (str.to.re "ee"))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)
