(declare-const X String)
; ^1?[1-2]$|^[1-9]$|^[1]0$
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "1")) (re.range "1" "2")) (re.range "1" "9") (str.to.re "10\x0a")))))
; /filename=[^\n]*\x2em3u/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m3u/i\x0a")))))
; /\x2edcr([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.dcr") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^\d+(\.\d{2})?$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a"))))
; ^(.)+\.(jpg|jpeg|JPG|JPEG)$
(assert (str.in.re X (re.++ (re.+ re.allchar) (str.to.re ".") (re.union (str.to.re "jpg") (str.to.re "jpeg") (str.to.re "JPG") (str.to.re "JPEG")) (str.to.re "\x0a"))))
(check-sat)
