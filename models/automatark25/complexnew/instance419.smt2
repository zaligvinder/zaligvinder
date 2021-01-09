(declare-const X String)
; \x2Ehtml\s+IDENTIFYwww\x2Eccnnlc\x2Ecomfilename=\x22Referer\x3A
(assert (str.in.re X (re.++ (str.to.re ".html") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "IDENTIFYwww.ccnnlc.com\x13filename=\x22Referer:\x0a"))))
; (^0.*[1-9]*)|(^860+)|(^8613)|(\D)|([0-9])
(assert (not (str.in.re X (re.union (re.++ (str.to.re "0") (re.* re.allchar) (re.* (re.range "1" "9"))) (re.++ (str.to.re "86") (re.+ (str.to.re "0"))) (str.to.re "8613") (re.comp (re.range "0" "9")) (re.++ (re.range "0" "9") (str.to.re "\x0a"))))))
; ^([A-Z]|[a-z]|[0-9])(([A-Z])*(([a-z])*([0-9])*(%)*(&)*(')*(\+)*(-)*(@)*(_)*(\.)*)|(\ )[^  ])+$
(assert (not (str.in.re X (re.++ (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (re.+ (re.union (re.++ (re.* (re.range "A" "Z")) (re.* (re.range "a" "z")) (re.* (re.range "0" "9")) (re.* (str.to.re "%")) (re.* (str.to.re "&")) (re.* (str.to.re "'")) (re.* (str.to.re "+")) (re.* (str.to.re "-")) (re.* (str.to.re "@")) (re.* (str.to.re "_")) (re.* (str.to.re "."))) (re.++ (str.to.re " ") (re.comp (str.to.re " "))))) (str.to.re "\x0a")))))
; (\<\?php\s+.*?((\?\>)|$))
(assert (str.in.re X (re.++ (str.to.re "\x0a<?php") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar) (str.to.re "?>"))))
(check-sat)
