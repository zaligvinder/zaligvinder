(declare-const X String)
; (http|ftp|https)://[a-zA-Z0-9\-\.]+\.[a-zA-Z]{2,4}(/\S*)?$
(assert (str.in.re X (re.++ (re.union (str.to.re "http") (str.to.re "ftp") (str.to.re "https")) (str.to.re "://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "."))) (str.to.re ".") ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.++ (str.to.re "/") (re.* (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))) (str.to.re "\x0a"))))
; /DEXT87(no|up|\d+\x2e\d+\x2e\d+\x2e\d+)/i
(assert (not (str.in.re X (re.++ (str.to.re "/DEXT87") (re.union (str.to.re "no") (str.to.re "up") (re.++ (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "/i\x0a")))))
(check-sat)
