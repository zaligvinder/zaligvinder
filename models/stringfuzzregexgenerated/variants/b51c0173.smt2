(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.union (str.to.re "0") (str.to.re "1"))) (re.++ (re.union (re.* (str.to.re "222")) (re.+ (str.to.re "33"))) (re.++ (re.+ (re.+ (str.to.re "4"))) (re.++ (re.union (re.+ (str.to.re "5")) (re.+ (str.to.re "66"))) (re.++ (re.union (re.union (str.to.re "77") (str.to.re "8")) (re.union (str.to.re "99") (str.to.re "aaa"))) (re.++ (re.union (re.* (str.to.re "bbb")) (re.union (str.to.re "ccc") (str.to.re "ddd"))) (re.++ (re.+ (re.+ (str.to.re "eee"))) (re.++ (re.+ (re.union (str.to.re "f") (str.to.re "gg"))) (re.++ (re.union (re.union (str.to.re "hhh") (str.to.re "ii")) (re.* (str.to.re "jjj"))) (re.+ (re.+ (re.+ (re.* re.allchar)))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)
