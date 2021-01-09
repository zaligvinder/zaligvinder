(declare-const X String)
; Host\x3A\sHello\x2E.*forum=
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Hello.") (re.* re.allchar) (str.to.re "forum=\x0a"))))
; as\x2Estarware\x2Ecom%3fUser-Agent\x3Ahostie
(assert (not (str.in.re X (str.to.re "as.starware.com%3fUser-Agent:hostie\x0a"))))
; ((\d{0}[0-9]|\d{0}[1]\d{0}[0-2])(\:)\d{0}[0-5]\d{0}[0-9](\:)\d{0}[0-5]\d{0}[0-9]\s(AM|PM))
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "9")) (re.++ ((_ re.loop 0 0) (re.range "0" "9")) (str.to.re "1") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "2"))) (str.to.re ":") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "5") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "9") (str.to.re ":") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "5") ((_ re.loop 0 0) (re.range "0" "9")) (re.range "0" "9") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.union (str.to.re "AM") (str.to.re "PM")))))
; /^[a-z]\x3d[a-f\d]{80,140}$/Pi
(assert (str.in.re X (re.++ (str.to.re "/") (re.range "a" "z") (str.to.re "=") ((_ re.loop 80 140) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/Pi\x0a"))))
; (((ht|f)tp(s?))\://)?(\bw{3}[^w]\b)?[^w{4}][^\@]([0-9a-zA-Z\-]+\.)+[a-zA-Z]{2,6}(\:[0-9]+)?(/\S*)?
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "://") (re.union (str.to.re "ht") (str.to.re "f")) (str.to.re "tp") (re.opt (str.to.re "s")))) (re.opt (re.++ ((_ re.loop 3 3) (str.to.re "w")) (re.comp (str.to.re "w")))) (re.union (str.to.re "w") (str.to.re "{") (str.to.re "4") (str.to.re "}")) (re.comp (str.to.re "@")) (re.+ (re.++ (re.+ (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z") (str.to.re "-"))) (str.to.re "."))) ((_ re.loop 2 6) (re.union (re.range "a" "z") (re.range "A" "Z"))) (re.opt (re.++ (str.to.re ":") (re.+ (re.range "0" "9")))) (re.opt (re.++ (str.to.re "/") (re.* (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))) (str.to.re "\x0a")))))
(check-sat)
