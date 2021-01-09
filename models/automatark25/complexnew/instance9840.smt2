(declare-const X String)
; Host\x3a\s+ServerToolbar
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ServerToolbar\x0a"))))
; User-Agent\x3a\w+Owner\x3A
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Owner:\x0a")))))
; ^([0-1]?[0-9]|[2][0-3])[:|.]([0-5][0-9])$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.range "0" "1")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.union (str.to.re ":") (str.to.re "|") (str.to.re ".")) (str.to.re "\x0a") (re.range "0" "5") (re.range "0" "9")))))
(check-sat)
