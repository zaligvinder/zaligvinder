(declare-const X String)
; /filename=[^\n]*\x2es3m/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".s3m/i\x0a")))))
; /^\s*?RCPT\s+?TO\x3a[^\r\n]*?\x28\x29\s\x7b/i
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "RCPT") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TO:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "()") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "{/i\x0a")))))
; [:;]{1}[-~+o]?[(<\[]+
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (str.to.re ":") (str.to.re ";"))) (re.opt (re.union (str.to.re "-") (str.to.re "~") (str.to.re "+") (str.to.re "o"))) (re.+ (re.union (str.to.re "(") (str.to.re "<") (str.to.re "["))) (str.to.re "\x0a")))))
; Subject\x3A.*www\x2Ewebcruiser\x2Ecc\w+www\x2Etopadwarereviews\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Subject:") (re.* re.allchar) (str.to.re "www.webcruiser.cc") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "www.topadwarereviews.com\x0a")))))
(check-sat)
