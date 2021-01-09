(declare-const X String)
; ^([1-9]|0[1-9]|1[0-2]):([0-5][0-9])$
(assert (not (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re ":\x0a") (re.range "0" "5") (re.range "0" "9")))))
; User-Agent\x3A\s+\x7D\x7BPort\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Port:\x0a"))))
; ([Cc][Hh][Aa][Nn][Dd][Aa][Nn].*?)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (str.to.re "C") (str.to.re "c")) (re.union (str.to.re "H") (str.to.re "h")) (re.union (str.to.re "A") (str.to.re "a")) (re.union (str.to.re "N") (str.to.re "n")) (re.union (str.to.re "D") (str.to.re "d")) (re.union (str.to.re "A") (str.to.re "a")) (re.union (str.to.re "N") (str.to.re "n")) (re.* re.allchar)))))
(check-sat)
