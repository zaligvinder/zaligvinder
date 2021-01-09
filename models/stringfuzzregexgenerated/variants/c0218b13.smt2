(declare-fun var0 () String)
(assert (str.in.re var0 (re.++ (re.union (re.+ (str.to.re "00")) (re.union (str.to.re "11") (str.to.re "22"))) (re.++ (re.* (re.union (str.to.re "3") (str.to.re "44"))) (re.++ (re.union (re.union (str.to.re "555") (str.to.re "66")) (re.+ (str.to.re "77"))) (re.++ (re.union (re.* (str.to.re "888")) (re.* (str.to.re "99"))) (re.++ (re.* (re.* (str.to.re "aaa"))) (re.++ (re.union (re.+ (str.to.re "bb")) (re.* (str.to.re "cc"))) (re.++ (re.union (re.* (str.to.re "dd")) (re.* (str.to.re "e"))) (re.++ (re.* (re.* (str.to.re "f"))) (re.++ (re.* (re.* (str.to.re "gg"))) (re.union (re.union (str.to.re "h") (str.to.re "i")) (re.+ (re.* (re.* re.allchar)))))))))))))))
(assert (<= 326 (str.len var0)))
(check-sat)
