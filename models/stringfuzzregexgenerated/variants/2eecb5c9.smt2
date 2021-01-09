(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.union (str.to.re "0") (str.to.re "11"))) (re.++ (re.* (re.+ (str.to.re "2"))) (re.++ (re.* (re.* (str.to.re "33"))) (re.++ (re.union (re.+ (str.to.re "4")) (re.+ (str.to.re "5"))) (re.++ (re.+ (re.union (str.to.re "66") (str.to.re "7"))) (re.++ (re.+ (re.+ (str.to.re "8"))) (re.++ (re.union (re.union (str.to.re "999") (str.to.re "a")) (re.+ (str.to.re "bb"))) (re.++ (re.* (re.union (str.to.re "c") (str.to.re "ddd"))) (re.++ (re.union (re.union (str.to.re "e") (str.to.re "f")) (re.+ (str.to.re "gg"))) (re.union (re.union (str.to.re "hhh") (str.to.re "iii")) (re.* (str.to.re "jjj"))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)
