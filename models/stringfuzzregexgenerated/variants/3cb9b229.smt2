(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "0")) (re.union (str.to.re "11") (str.to.re "2"))) (re.++ (re.union (re.union (str.to.re "333") (str.to.re "444")) (re.* (str.to.re "5"))) (re.++ (re.+ (re.union (str.to.re "66") (str.to.re "7"))) (re.++ (re.* (re.union (str.to.re "88") (str.to.re "99"))) (re.++ (re.union (re.* (str.to.re "aa")) (re.union (str.to.re "b") (str.to.re "ccc"))) (re.++ (re.union (re.union (str.to.re "d") (str.to.re "e")) (re.+ (str.to.re "f"))) (re.++ (re.* (re.+ (str.to.re "ggg"))) (re.++ (re.* (re.+ (str.to.re "hhh"))) (re.++ (re.+ (re.union (str.to.re "iii") (str.to.re "j"))) (re.+ (re.* (str.to.re "kk"))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
