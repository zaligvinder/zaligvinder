(declare-const X String)
; ^1?[1-2]$|^[1-9]$|^[1]0$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "1")) (re.range "1" "2")) (re.range "1" "9") (str.to.re "10\x0a"))))
; ^-?\d+(\.\d+)?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; User-Agent\x3a.*%3f\s+Subject\x3Aas\x2Estarware\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "%3f") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Subject:as.starware.com\x0a")))))
(check-sat)
