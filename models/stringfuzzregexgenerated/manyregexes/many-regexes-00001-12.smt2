(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "000") (str.to.re "111")) (re.+ (str.to.re "22"))) (re.++ (re.+ (re.union (str.to.re "333") (str.to.re "444"))) (re.++ (re.union (re.* (str.to.re "55")) (re.* (str.to.re "6"))) (re.++ (re.+ (re.+ (str.to.re "777"))) (re.++ (re.+ (re.* (str.to.re "88"))) (re.++ (re.* (re.+ (str.to.re "9"))) (re.++ (re.* (re.+ (str.to.re "aaa"))) (re.++ (re.* (re.+ (str.to.re "b"))) (re.++ (re.+ (re.+ (str.to.re "ccc"))) (re.+ (re.union (str.to.re "ddd") (str.to.re "eee"))))))))))))))
(check-sat)