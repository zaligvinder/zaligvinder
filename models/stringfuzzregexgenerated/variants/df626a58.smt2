(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.union (str.to.re "000") (str.to.re "11")) (re.+ (str.to.re "222"))) (re.++ (re.+ (re.union (str.to.re "333") (str.to.re "4"))) (re.++ (re.+ (re.union (str.to.re "5") (str.to.re "6"))) (re.++ (re.union (re.* (str.to.re "7")) (re.union (str.to.re "8") (str.to.re "99"))) (re.++ (re.* (re.* (str.to.re "aaa"))) (re.++ (re.* (re.* (str.to.re "bb"))) (re.++ (re.union (re.union (str.to.re "c") (str.to.re "d")) (re.+ (str.to.re "ee"))) (re.++ (re.+ (re.union (str.to.re "ff") (str.to.re "ggg"))) (re.++ (re.* (re.+ (str.to.re "hhh"))) (re.union (re.union (str.to.re "ii") (str.to.re "j")) (re.union (str.to.re "k") (re.* (re.* re.allchar)))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
