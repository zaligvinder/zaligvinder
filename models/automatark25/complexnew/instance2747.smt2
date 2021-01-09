(declare-const X String)
; ^[0]{1}[19]{1}[0-9]{8,9}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re "0")) ((_ re.loop 1 1) (re.union (str.to.re "1") (str.to.re "9"))) ((_ re.loop 8 9) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^((http|https|ftp):\/\/(www\.)?|www\.)[a-zA-Z0-9\_\-]+\.([a-zA-Z]{2,4}|[a-zA-Z]{2}\.[a-zA-Z]{2})(\/[a-zA-Z0-9\-\._\?\&=,'\+%\$#~]*)*$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "http") (str.to.re "https") (str.to.re "ftp")) (str.to.re "://") (re.opt (str.to.re "www."))) (str.to.re "www.")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (str.to.re ".") (re.union ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re ".") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.* (re.++ (str.to.re "/") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re ".") (str.to.re "_") (str.to.re "?") (str.to.re "&") (str.to.re "=") (str.to.re ",") (str.to.re "'") (str.to.re "+") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re "~"))))) (str.to.re "\x0a")))))
; ^-?\d+([^.,])?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re ","))) (str.to.re "\x0a")))))
; cyber@yahoo\x2Ecom\s+Host\x3a\x7D\x7Crichfind\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "cyber@yahoo.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:}|richfind.com\x0a")))))
; ^01[1,2,3,4,6,7,8,9]\d{7,8}$
(assert (str.in.re X (re.++ (str.to.re "01") (re.union (str.to.re "1") (str.to.re ",") (str.to.re "2") (str.to.re "3") (str.to.re "4") (str.to.re "6") (str.to.re "7") (str.to.re "8") (str.to.re "9")) ((_ re.loop 7 8) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
