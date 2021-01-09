(declare-const X String)
; Subject\x3A\swww\x2Esearchwords\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Subject:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.searchwords.com\x0a"))))
; ^[A-Z][a-z]+(tz)?(man|berg)$
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (re.opt (str.to.re "tz")) (re.union (str.to.re "man") (str.to.re "berg")) (str.to.re "\x0a")))))
; ^([a-zA-Z]\:|\\)\\([^\\]+\\)*[^\/:*?"<>|]+\.htm(l)?$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":")) (str.to.re "\x5c")) (str.to.re "\x5c") (re.* (re.++ (re.+ (re.comp (str.to.re "\x5c"))) (str.to.re "\x5c"))) (re.+ (re.union (str.to.re "/") (str.to.re ":") (str.to.re "*") (str.to.re "?") (str.to.re "\x22") (str.to.re "<") (str.to.re ">") (str.to.re "|"))) (str.to.re ".htm") (re.opt (str.to.re "l")) (str.to.re "\x0a"))))
(check-sat)
