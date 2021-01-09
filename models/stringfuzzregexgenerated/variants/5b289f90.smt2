(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "00") (str.to.re "11")) (re.* (str.to.re "22"))) (re.++ (re.+ (re.* (str.to.re "33"))) (re.++ (re.* (re.* (str.to.re "444"))) (re.++ (re.+ (re.+ (str.to.re "5"))) (re.++ (re.+ (re.+ (str.to.re "66"))) (re.++ (re.union (re.union (str.to.re "777") (str.to.re "888")) (re.* (str.to.re "999"))) (re.++ (re.union (re.union (str.to.re "aaa") (str.to.re "bb")) (re.union (str.to.re "c") (str.to.re "d"))) (re.++ (re.union (re.* (str.to.re "e")) (re.* (str.to.re "fff"))) (re.++ (re.union (re.+ (str.to.re "g")) (re.* (str.to.re "hhh"))) (re.+ (re.+ (str.to.re "iii"))))))))))))))
(assert (<= 351 (str.len var0)))
(check-sat)
