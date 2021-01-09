(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.* (str.to.re "000"))) (re.++ (re.+ (re.union (str.to.re "111") (str.to.re "222"))) (re.++ (re.+ (re.union (str.to.re "3") (str.to.re "444"))) (re.++ (re.* (re.union (str.to.re "5") (str.to.re "666"))) (re.++ (re.union (re.+ (str.to.re "77")) (re.+ (str.to.re "88"))) (re.++ (re.union (re.* (str.to.re "99")) (re.+ (str.to.re "aaa"))) (re.++ (re.+ (re.* (str.to.re "b"))) (re.++ (re.* (re.union (str.to.re "cc") (str.to.re "ddd"))) (re.++ (re.* (re.union (str.to.re "ee") (str.to.re "ff"))) (re.* (re.* (str.to.re "g"))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
