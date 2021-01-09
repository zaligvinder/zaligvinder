(declare-const X String)
; /filename=[^\n]*\x2edvr-ms/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".dvr-ms/i\x0a")))))
; User-Agent\x3A[^\n\r]*quick\x2Eqsrch\x2Ecom.*www\.searchinweb\.com
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "quick.qsrch.com") (re.* re.allchar) (str.to.re "www.searchinweb.com\x0a"))))
; ^[A-Z][a-z]+((e(m|ng)|str)a)$
(assert (not (str.in.re X (re.++ (re.range "A" "Z") (re.+ (re.range "a" "z")) (str.to.re "\x0a") (re.union (re.++ (str.to.re "e") (re.union (str.to.re "m") (str.to.re "ng"))) (str.to.re "str")) (str.to.re "a")))))
; /filename=[^\n]*\x2epng/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".png/i\x0a")))))
; ^[A-Z]{2}-[0-9]{2}-[0-9]{2}|[0-9]{2}-[0-9]{2}-[A-Z]{2}|[0-9]{2}-[A-Z]{2}-[0-9]{2}|[A-Z]{2}-[0-9]{2}-[A-Z]{2}|[A-Z]{2}-[A-Z]{2}-[0-9]{2}|}|[0-9]{2}-[A-Z]{2}-[A-Z]{2}|[0-9]{2}-[A-Z]{3}-[0-9]{1}|[0-9]{1}-[A-Z]{3}-[0-9]{2}$
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "A" "Z"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "A" "Z"))) (re.++ ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9"))) (str.to.re "}") (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 2 2) (re.range "A" "Z"))) (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 3 3) (re.range "A" "Z")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a"))))))
(check-sat)
