(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.* (str.to.re "0"))) (re.++ (re.+ (re.+ (str.to.re "11"))) (re.++ (re.union (re.+ (str.to.re "2")) (re.union (str.to.re "3") (str.to.re "44"))) (re.++ (re.union (re.union (str.to.re "555") (str.to.re "666")) (re.union (str.to.re "7") (str.to.re "88"))) (re.++ (re.+ (re.union (str.to.re "99") (str.to.re "a"))) (re.++ (re.union (re.* (str.to.re "bbb")) (re.+ (str.to.re "c"))) (re.++ (re.* (re.* (str.to.re "d"))) (re.++ (re.union (re.union (str.to.re "eee") (str.to.re "ff")) (re.union (str.to.re "gg") (str.to.re "h"))) (re.++ (re.+ (re.union (str.to.re "i") (str.to.re "jj"))) (re.+ (re.* (str.to.re "k"))))))))))))))
(assert (<= 76 (str.len var0)))
(check-sat)