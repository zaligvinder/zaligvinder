(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "0"))) (re.++ (re.* (re.* (str.to.re "11"))) (re.++ (re.union (re.+ (str.to.re "22")) (re.+ (str.to.re "33"))) (re.++ (re.+ (re.* (str.to.re "44"))) (re.++ (re.* (re.* (str.to.re "555"))) (re.++ (re.union (re.+ (str.to.re "666")) (re.union (str.to.re "7") (str.to.re "88"))) (re.++ (re.union (re.union (str.to.re "999") (str.to.re "aa")) (re.+ (str.to.re "b"))) (re.++ (re.* (re.+ (str.to.re "ccc"))) (re.++ (re.union (re.+ (str.to.re "d")) (re.union (str.to.re "ee") (str.to.re "ff"))) (re.union (re.* (str.to.re "g")) (re.* (str.to.re "h"))))))))))))))
(assert (<= 126 (str.len var0)))
(check-sat)