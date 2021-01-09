(declare-const X String)
; ((https?|ftp|gopher|telnet|file|notes|ms-help):((//)|(\\\\))+[\w\d:#@%/;$()~_\+-=\\\.&]*)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "http") (re.opt (str.to.re "s"))) (str.to.re "ftp") (str.to.re "gopher") (str.to.re "telnet") (str.to.re "file") (str.to.re "notes") (str.to.re "ms-help")) (str.to.re ":") (re.+ (re.union (str.to.re "//") (str.to.re "\x5c\x5c"))) (re.* (re.union (re.range "0" "9") (str.to.re ":") (str.to.re "#") (str.to.re "@") (str.to.re "%") (str.to.re "/") (str.to.re ";") (str.to.re "$") (str.to.re "(") (str.to.re ")") (str.to.re "~") (str.to.re "_") (re.range "+" "=") (str.to.re "\x5c") (str.to.re ".") (str.to.re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
(check-sat)
