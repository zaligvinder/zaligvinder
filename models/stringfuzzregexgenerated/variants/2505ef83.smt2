(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.* (str.to.re "000")) (re.union (str.to.re "11") (str.to.re "22"))) (re.++ (re.+ (re.+ (str.to.re "333"))) (re.++ (re.+ (re.union (str.to.re "4") (str.to.re "55"))) (re.++ (re.* (re.* (str.to.re "666"))) (re.++ (re.+ (re.union (str.to.re "777") (str.to.re "8"))) (re.++ (re.+ (re.union (str.to.re "99") (str.to.re "aaa"))) (re.++ (re.* (re.union (str.to.re "b") (str.to.re "cc"))) (re.++ (re.* (re.union (str.to.re "ddd") (str.to.re "e"))) (re.++ (re.union (re.* (str.to.re "ff")) (re.* (str.to.re "gg"))) (re.* (re.* (str.to.re "h"))))))))))))))
(assert (<= 251 (str.len var0)))
(check-sat)
