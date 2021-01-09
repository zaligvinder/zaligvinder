(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "000"))) (re.++ (re.union (re.union (str.to.re "1") (str.to.re "2")) (re.+ (str.to.re "3"))) (re.++ (re.* (re.union (str.to.re "444") (str.to.re "5"))) (re.++ (re.+ (re.union (str.to.re "66") (str.to.re "7"))) (re.++ (re.+ (re.+ (str.to.re "888"))) (re.++ (re.union (re.union (str.to.re "99") (str.to.re "aa")) (re.* (str.to.re "bbb"))) (re.++ (re.+ (re.+ (str.to.re "ccc"))) (re.++ (re.* (re.union (str.to.re "dd") (str.to.re "e"))) (re.++ (re.+ (re.+ (str.to.re "ff"))) (re.union (re.* (str.to.re "g")) (re.* (re.+ (re.++ (str.to.re "") (str.to.re ""))))))))))))))))
(assert (<= 301 (str.len var0)))
(check-sat)
