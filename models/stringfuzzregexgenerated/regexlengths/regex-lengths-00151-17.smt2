(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "00"))) (re.++ (re.* (re.union (str.to.re "111") (str.to.re "22"))) (re.++ (re.+ (re.+ (str.to.re "3"))) (re.++ (re.union (re.union (str.to.re "44") (str.to.re "5")) (re.union (str.to.re "6") (str.to.re "777"))) (re.++ (re.+ (re.union (str.to.re "888") (str.to.re "99"))) (re.++ (re.* (re.* (str.to.re "a"))) (re.++ (re.+ (re.+ (str.to.re "bbb"))) (re.++ (re.union (re.union (str.to.re "cc") (str.to.re "ddd")) (re.* (str.to.re "eee"))) (re.++ (re.* (re.+ (str.to.re "ff"))) (re.* (re.union (str.to.re "ggg") (str.to.re "h"))))))))))))))
(assert (<= 151 (str.len var0)))
(check-sat)