(declare-const X String)
; [AaEeIiOoUuYy]
(assert (str.in.re X (re.++ (re.union (str.to.re "A") (str.to.re "a") (str.to.re "E") (str.to.re "e") (str.to.re "I") (str.to.re "i") (str.to.re "O") (str.to.re "o") (str.to.re "U") (str.to.re "u") (str.to.re "Y") (str.to.re "y")) (str.to.re "\x0a"))))
; ^(([a-zA-Z]+\d+)|(\d+[a-zA-Z]+))[a-zA-Z0-9]*$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.+ (re.range "0" "9"))) (re.++ (re.+ (re.range "0" "9")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; ((https?|ftp|gopher|telnet|file|notes|ms-help):((//)|(\\\\))+[\w\d:#@%/;$()~_\+-=\\\.&]*)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "http") (re.opt (str.to.re "s"))) (str.to.re "ftp") (str.to.re "gopher") (str.to.re "telnet") (str.to.re "file") (str.to.re "notes") (str.to.re "ms-help")) (str.to.re ":") (re.+ (re.union (str.to.re "//") (str.to.re "\x5c\x5c"))) (re.* (re.union (re.range "0" "9") (str.to.re ":") (str.to.re "#") (str.to.re "@") (str.to.re "%") (str.to.re "/") (str.to.re ";") (str.to.re "$") (str.to.re "(") (str.to.re ")") (str.to.re "~") (str.to.re "_") (re.range "+" "=") (str.to.re "\x5c") (str.to.re ".") (str.to.re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
(check-sat)
