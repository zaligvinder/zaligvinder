(declare-const X String)
; /\x00hide hide\x22\x09\x22([a-z0-9\x5c\x2e\x3a]+\x2eexe|sh)/
(assert (not (str.in.re X (re.++ (str.to.re "/\x00hide hide\x22\x09\x22") (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "\x5c") (str.to.re ".") (str.to.re ":"))) (str.to.re ".exe")) (str.to.re "sh")) (str.to.re "/\x0a")))))
; FTP\s+\x7D\x7BPort\x3A\s+Host\x3A
(assert (str.in.re X (re.++ (str.to.re "FTP") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Port:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:\x0a"))))
; ^(\d{5})$|^([a-zA-Z]\d[a-zA-Z]( )?\d[a-zA-Z]\d)$
(assert (str.in.re X (re.union ((_ re.loop 5 5) (re.range "0" "9")) (re.++ (str.to.re "\x0a") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.opt (str.to.re " ")) (re.range "0" "9") (re.union (re.range "a" "z") (re.range "A" "Z")) (re.range "0" "9")))))
(check-sat)
