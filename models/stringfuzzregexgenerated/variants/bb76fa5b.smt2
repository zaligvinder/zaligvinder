(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "000") (str.to.re "11"))) (re.++ (re.union (re.union (str.to.re "2") (str.to.re "3")) (re.* (str.to.re "4"))) (re.++ (re.union (re.* (str.to.re "555")) (re.union (str.to.re "6") (str.to.re "7"))) (re.++ (re.+ (re.+ (str.to.re "888"))) (re.++ (re.+ (re.* (str.to.re "99"))) (re.++ (re.union (re.+ (str.to.re "aa")) (re.* (str.to.re "bbb"))) (re.++ (re.+ (re.union (str.to.re "ccc") (str.to.re "d"))) (re.++ (re.union (re.+ (str.to.re "e")) (re.+ (str.to.re "ff"))) (re.++ (re.union (re.* (str.to.re "gg")) (re.* (str.to.re "hhh"))) (re.union (re.* (str.to.re "ii")) (re.* (re.++ (re.* re.allchar) (re.++ (str.to.re "") (str.to.re ""))))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)
