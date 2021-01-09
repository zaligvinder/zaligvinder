(declare-const X String)
; 05\d{8}
(assert (not (str.in.re X (re.++ (str.to.re "05") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; http[s]?://(www.facebook|[a-zA-Z]{2}-[a-zA-Z]{2}.facebook|facebook)\.com/(pages/[a-zA-Z0-9\.-]+/[0-9]+|[a-zA-Z0-9\.-]+)[/]?$
(assert (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://") (re.union (re.++ (str.to.re "www") re.allchar (str.to.re "facebook")) (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "-") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) re.allchar (str.to.re "facebook")) (str.to.re "facebook")) (str.to.re ".com/") (re.union (re.++ (str.to.re "pages/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-"))) (str.to.re "/") (re.+ (re.range "0" "9"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "-")))) (re.opt (str.to.re "/")) (str.to.re "\x0a"))))
; /\x2exlsx([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.xlsx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Port\x2E[^\n\r]*007\d+Logsdl\x2Eweb-nexus\x2Enet
(assert (not (str.in.re X (re.++ (str.to.re "Port.") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "007") (re.+ (re.range "0" "9")) (str.to.re "Logsdl.web-nexus.net\x0a")))))
(check-sat)
