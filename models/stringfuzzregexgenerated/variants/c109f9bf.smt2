(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "00")) (re.union (str.to.re "1") (str.to.re "222"))) (re.++ (re.* (re.* (str.to.re "33"))) (re.++ (re.union (re.* (str.to.re "4")) (re.union (str.to.re "5") (str.to.re "666"))) (re.++ (re.+ (re.* (str.to.re "7"))) (re.++ (re.union (re.+ (str.to.re "8")) (re.union (str.to.re "999") (str.to.re "aaa"))) (re.++ (re.union (re.+ (str.to.re "bbb")) (re.+ (str.to.re "c"))) (re.++ (re.+ (re.+ (str.to.re "d"))) (re.++ (re.union (re.+ (str.to.re "e")) (re.+ (str.to.re "f"))) (re.++ (re.union (re.union (str.to.re "gg") (str.to.re "hh")) (re.* (str.to.re "ii"))) (re.* (re.+ (re.* (re.* re.allchar)))))))))))))))
(assert (<= 401 (str.len var0)))
(check-sat)
