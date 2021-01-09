(declare-const X String)
; /(^|&)(db(username|password|)|cp(username|password|domain))=[^&]*?(\x27|%27)[^&]*?([\x3b\x60]|\x24\x28|%3b|%60|%24%28)/Pmi
(assert (not (str.in.re X (re.++ (str.to.re "/&") (re.union (re.++ (str.to.re "db") (re.union (str.to.re "username") (str.to.re "password"))) (re.++ (str.to.re "cp") (re.union (str.to.re "username") (str.to.re "password") (str.to.re "domain")))) (str.to.re "=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "'") (str.to.re "%27")) (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "$(") (str.to.re "%3b") (str.to.re "%60") (str.to.re "%24%28") (str.to.re ";") (str.to.re "`")) (str.to.re "/Pmi\x0a")))))
; ^([\d]*[1-9]+[\d]*)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")))))
; ^-?\d+([.,]?\d+)?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re ".") (str.to.re ","))) (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^(2[0-3]|[01]?[0-9]):([0-5]?[0-9]):([0-5]?[0-9])$
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "2") (re.range "0" "3")) (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.range "0" "9"))) (str.to.re "::\x0a") (re.opt (re.range "0" "5")) (re.range "0" "9") (re.opt (re.range "0" "5")) (re.range "0" "9")))))
; ^\d+((\.|\,)\d+)?$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re ".") (str.to.re ",")) (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
