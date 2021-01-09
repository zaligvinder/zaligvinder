(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "000") (str.to.re "1")) (re.+ (str.to.re "22"))) (re.++ (re.* (re.* (str.to.re "33"))) (re.++ (re.* (re.* (str.to.re "44"))) (re.++ (re.+ (re.* (str.to.re "5"))) (re.++ (re.union (re.* (str.to.re "6")) (re.+ (str.to.re "77"))) (re.++ (re.+ (re.* (str.to.re "8"))) (re.++ (re.* (re.+ (str.to.re "9"))) (re.++ (re.+ (re.union (str.to.re "aaa") (str.to.re "bb"))) (re.++ (re.+ (re.union (str.to.re "cc") (str.to.re "ddd"))) (re.union (re.union (str.to.re "ee") (re.+ (re.* (re.+ re.allchar)))) (re.+ (str.to.re "g"))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
