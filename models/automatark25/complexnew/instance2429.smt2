(declare-const X String)
; ^((https?|ftp)\://((\[?(\d{1,3}\.){3}\d{1,3}\]?)|(([-a-zA-Z0-9]+\.)+[a-zA-Z]{2,4}))(\:\d+)?(/[-a-zA-Z0-9._?,'+&%$#=~\\]+)*/?)$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "http") (re.opt (str.to.re "s"))) (str.to.re "ftp")) (str.to.re "://") (re.union (re.++ (re.opt (str.to.re "[")) ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "."))) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (str.to.re "]"))) (re.++ (re.+ (re.++ (re.+ (re.union (str.to.re "-") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "."))) ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.opt (re.++ (str.to.re ":") (re.+ (re.range "0" "9")))) (re.* (re.++ (str.to.re "/") (re.+ (re.union (str.to.re "-") (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "?") (str.to.re ",") (str.to.re "'") (str.to.re "+") (str.to.re "&") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re "=") (str.to.re "~") (str.to.re "\x5c"))))) (re.opt (str.to.re "/")))))
; ((([7-9])(\d{3})([-])(\d{4}))|(([7-9])(\d{7})))
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.range "7" "9") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (re.range "7" "9") ((_ re.loop 7 7) (re.range "0" "9")))) (str.to.re "\x0a")))))
; (^\d{1,2}\.\d{1,2}\.\d{4})|(^\d{1,2}\.\d{1,2})|(^\d{1,2})$
(assert (not (str.in.re X (re.union (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "\x0a"))))))
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (str.in.re X (str.to.re "(robert@blackcastlesoft.com)\x0a")))
; /[a-zA-Z0-9]\/[a-f0-9]{5}\.swf[\x22\x27]/
(assert (str.in.re X (re.++ (str.to.re "/") (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")) (str.to.re "/") ((_ re.loop 5 5) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".swf") (re.union (str.to.re "\x22") (str.to.re "'")) (str.to.re "/\x0a"))))
(check-sat)
