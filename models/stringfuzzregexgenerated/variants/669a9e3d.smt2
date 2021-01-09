(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.+ (re.+ (str.to.re "000"))) (re.++ (re.+ (re.union (str.to.re "1") (str.to.re "2"))) (re.++ (re.* (re.+ (str.to.re "33"))) (re.++ (re.* (re.union (str.to.re "44") (str.to.re "555"))) (re.++ (re.union (re.union (str.to.re "6") (str.to.re "777")) (re.union (str.to.re "888") (str.to.re "9"))) (re.++ (re.union (re.union (str.to.re "aa") (str.to.re "bb")) (re.union (str.to.re "ccc") (str.to.re "dd"))) (re.++ (re.+ (re.* (str.to.re "ee"))) (re.++ (re.union (re.* (str.to.re "ff")) (re.* (str.to.re "ggg"))) (re.++ (re.union (re.+ (str.to.re "hh")) (re.* (str.to.re "ii"))) (re.+ (re.* (str.to.re "j"))))))))))))))
(assert (<= 226 (str.len var0)))
(check-sat)
