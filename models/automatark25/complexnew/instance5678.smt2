(declare-const X String)
; (""|[^"])*
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "\x22\x22") (re.comp (str.to.re "\x22")))) (str.to.re "\x0a"))))
; (^\d*\.?\d*[1-9]+\d*$)|(^[1-9]+\d*\.\d*$)
(assert (str.in.re X (re.union (re.++ (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9"))))))
; ^[^ ,0]*$
(assert (not (str.in.re X (re.++ (re.* (re.union (str.to.re " ") (str.to.re ",") (str.to.re "0"))) (str.to.re "\x0a")))))
; Hello\x2E\s+ovplrichfind\x2EcomCookie\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Hello.") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ovplrichfind.comCookie:\x0a")))))
; PORT\x3Dinternalcyber@yahoo\x2EcomHeaders
(assert (str.in.re X (str.to.re "PORT=internalcyber@yahoo.comHeaders\x0a")))
(check-sat)
