(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "0"))) (re.++ (re.+ (re.union (str.to.re "1") (str.to.re "222"))) (re.++ (re.* (re.+ (str.to.re "333"))) (re.++ (re.union (re.union (str.to.re "44") (str.to.re "5")) (re.* (str.to.re "6"))) (re.++ (re.+ (re.+ (str.to.re "7"))) (re.++ (re.+ (re.+ (str.to.re "888"))) (re.++ (re.union (re.+ (str.to.re "99")) (re.+ (str.to.re "aaa"))) (re.++ (re.* (re.+ (str.to.re "bb"))) (re.++ (re.* (re.* (str.to.re "c"))) (re.union (re.union (str.to.re "dd") (str.to.re "eee")) (re.++ (str.to.re "ff") (str.to.re "gg"))))))))))))))
(assert (<= 426 (str.len var0)))
(check-sat)
