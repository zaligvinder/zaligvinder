(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "000"))) (re.++ (re.+ (re.+ (str.to.re "11"))) (re.++ (re.+ (re.union (str.to.re "2") (str.to.re "333"))) (re.++ (re.+ (re.+ (str.to.re "4"))) (re.++ (re.* (re.+ (str.to.re "5"))) (re.++ (re.union (re.union (str.to.re "66") (str.to.re "77")) (re.+ (str.to.re "888"))) (re.++ (re.* (re.union (str.to.re "9") (str.to.re "a"))) (re.++ (re.+ (re.+ (str.to.re "bbb"))) (re.++ (re.* (re.union (str.to.re "cc") (str.to.re "d"))) (re.union (re.+ (str.to.re "e")) (re.union (re.+ (re.++ (re.+ (re.++ (str.to.re "") (str.to.re ""))) (re.+ re.allchar))) (str.to.re "ggg"))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
