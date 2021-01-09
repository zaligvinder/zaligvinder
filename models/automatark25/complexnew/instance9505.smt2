(declare-const X String)
; ^([a-zA-Z0-9!@#$%^&*()-_=+;:'"|~`<>?/{}]{1,5})$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 5) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "$") (str.to.re "%") (str.to.re "^") (str.to.re "&") (str.to.re "*") (str.to.re "(") (re.range ")" "_") (str.to.re "=") (str.to.re "+") (str.to.re ";") (str.to.re ":") (str.to.re "'") (str.to.re "\x22") (str.to.re "|") (str.to.re "~") (str.to.re "`") (str.to.re "<") (str.to.re ">") (str.to.re "?") (str.to.re "/") (str.to.re "{") (str.to.re "}"))) (str.to.re "\x0a")))))
; User-Agent\x3aHost\x3AHost\x3ASpyBuddy
(assert (str.in.re X (str.to.re "User-Agent:Host:Host:SpyBuddy\x0a")))
; /\x2exfdl([\?\x5c\x2f]|$)/miU
(assert (str.in.re X (re.++ (str.to.re "/.xfdl") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/miU\x0a"))))
; ([Cc][Hh][Aa][Nn][Dd][Aa][Nn].*?)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (str.to.re "C") (str.to.re "c")) (re.union (str.to.re "H") (str.to.re "h")) (re.union (str.to.re "A") (str.to.re "a")) (re.union (str.to.re "N") (str.to.re "n")) (re.union (str.to.re "D") (str.to.re "d")) (re.union (str.to.re "A") (str.to.re "a")) (re.union (str.to.re "N") (str.to.re "n")) (re.* re.allchar)))))
(check-sat)
