(declare-const X String)
; ^[0]{1}[19]{1}[0-9]{8,9}$
(assert (not (str.in_re X (re.++ ((_ re.loop 1 1) (str.to_re "0")) ((_ re.loop 1 1) (re.union (str.to_re "1") (str.to_re "9"))) ((_ re.loop 8 9) (re.range "0" "9")) (str.to_re "\u{a}")))))
; ^((http|https|ftp):\/\/(www\.)?|www\.)[a-zA-Z0-9\_\-]+\.([a-zA-Z]{2,4}|[a-zA-Z]{2}\.[a-zA-Z]{2})(\/[a-zA-Z0-9\-\._\?\&=,'\+%\$#~]*)*$
(assert (not (str.in_re X (re.++ (re.union (re.++ (re.union (str.to_re "http") (str.to_re "https") (str.to_re "ftp")) (str.to_re "://") (re.opt (str.to_re "www."))) (str.to_re "www.")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "_") (str.to_re "-"))) (str.to_re ".") (re.union ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.++ ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to_re ".") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.* (re.++ (str.to_re "/") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to_re "-") (str.to_re ".") (str.to_re "_") (str.to_re "?") (str.to_re "&") (str.to_re "=") (str.to_re ",") (str.to_re "'") (str.to_re "+") (str.to_re "%") (str.to_re "$") (str.to_re "#") (str.to_re "~"))))) (str.to_re "\u{a}")))))
; ^-?\d+([^.,])?$
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "-")) (re.+ (re.range "0" "9")) (re.opt (re.union (str.to_re ".") (str.to_re ","))) (str.to_re "\u{a}")))))
; cyber@yahoo\u{2E}com\s+Host\u{3a}\u{7D}\u{7C}richfind\u{2E}com
(assert (not (str.in_re X (re.++ (str.to_re "cyber@yahoo.com") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "Host:}|richfind.com\u{a}")))))
; ^01[1,2,3,4,6,7,8,9]\d{7,8}$
(assert (str.in_re X (re.++ (str.to_re "01") (re.union (str.to_re "1") (str.to_re ",") (str.to_re "2") (str.to_re "3") (str.to_re "4") (str.to_re "6") (str.to_re "7") (str.to_re "8") (str.to_re "9")) ((_ re.loop 7 8) (re.range "0" "9")) (str.to_re "\u{a}"))))
(check-sat)
