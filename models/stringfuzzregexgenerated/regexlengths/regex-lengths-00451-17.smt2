(set-logic QF_S)
(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.* (re.+ (str.to.re "0"))) (re.++ (re.+ (re.* (str.to.re "1"))) (re.++ (re.union (re.union (str.to.re "222") (str.to.re "3")) (re.* (str.to.re "44"))) (re.++ (re.* (re.+ (str.to.re "5"))) (re.++ (re.* (re.* (str.to.re "6"))) (re.++ (re.union (re.* (str.to.re "777")) (re.* (str.to.re "888"))) (re.++ (re.+ (re.union (str.to.re "99") (str.to.re "aa"))) (re.++ (re.+ (re.* (str.to.re "b"))) (re.++ (re.union (re.* (str.to.re "cc")) (re.union (str.to.re "d") (str.to.re "eee"))) (re.union (re.union (str.to.re "ff") (str.to.re "g")) (re.* (str.to.re "hhh"))))))))))))))
(assert (<= 451 (str.len var0)))
(check-sat)