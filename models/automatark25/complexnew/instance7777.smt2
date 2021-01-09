(declare-const X String)
; ^(([$])?((([0-9]{1,3},)+[0-9]{3})|[0-9]+)(\.[0-9]{2})?)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "$")) (re.union (re.++ (re.+ (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9"))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))))))
; /\x2Esum([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.sum") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; \(\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\)
(assert (str.in.re X (re.++ (str.to.re "(") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ")\x0a"))))
; /filename=[^\n]*\x2ebcl/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".bcl/i\x0a")))))
; YOURHost\x3Awww\x2Ealfacleaner\x2Ecom
(assert (str.in.re X (str.to.re "YOURHost:www.alfacleaner.com\x0a")))
(check-sat)
