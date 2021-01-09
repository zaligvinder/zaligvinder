(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "00"))) (re.++ (re.union (re.* (str.to.re "111")) (re.union (str.to.re "22") (str.to.re "33"))) (re.++ (re.* (re.* (str.to.re "44"))) (re.++ (re.+ (re.union (str.to.re "55") (str.to.re "6"))) (re.++ (re.union (re.* (str.to.re "777")) (re.* (str.to.re "888"))) (re.++ (re.+ (re.+ (str.to.re "99"))) (re.++ (re.+ (re.* (str.to.re "aaa"))) (re.++ (re.+ (re.union (str.to.re "bb") (str.to.re "c"))) (re.++ (re.union (re.+ (str.to.re "dd")) (re.+ (str.to.re "ee"))) (re.union (re.* (str.to.re "f")) (re.union (re.* (re.+ (re.++ (re.+ re.allchar) (re.* re.allchar)))) (str.to.re "hh"))))))))))))))
(assert (<= 376 (str.len var0)))
(check-sat)
