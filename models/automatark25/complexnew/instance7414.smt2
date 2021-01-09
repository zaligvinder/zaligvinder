(declare-const X String)
; /\x2epaq8o([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.paq8o") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /^loginpost\x7c\d+\x7c\d+\x7C[a-z0-9]+\x2E[a-z]{2,3}\x7C[a-z0-9]+\x7C/
(assert (not (str.in.re X (re.++ (str.to.re "/loginpost|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.range "0" "9")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 2 3) (re.range "a" "z")) (str.to.re "|") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "|/\x0a")))))
; LogsHost\x3asearches\x2Eworldtostart\x2Ecom
(assert (not (str.in.re X (str.to.re "LogsHost:searches.worldtostart.com\x0a"))))
(check-sat)
