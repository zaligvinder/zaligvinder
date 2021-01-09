(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "00")) (re.* (str.to.re "1"))) (re.++ (re.+ (re.+ (str.to.re "2"))) (re.++ (re.+ (re.union (str.to.re "333") (str.to.re "444"))) (re.++ (re.union (re.+ (str.to.re "555")) (re.union (str.to.re "6") (str.to.re "77"))) (re.++ (re.+ (re.* (str.to.re "8"))) (re.++ (re.+ (re.union (str.to.re "99") (str.to.re "a"))) (re.++ (re.+ (re.union (str.to.re "b") (str.to.re "cc"))) (re.++ (re.+ (re.union (str.to.re "ddd") (str.to.re "eee"))) (re.++ (re.* (re.union (str.to.re "ff") (str.to.re "ggg"))) (re.* (re.+ (str.to.re "h"))))))))))))))
(check-sat)
