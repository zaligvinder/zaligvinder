(declare-const X String)
; /\.background\s*=\s*[\x22\x27]{2}/i
(assert (str.in.re X (re.++ (str.to.re "/.background") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "=") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 2 2) (re.union (str.to.re "\x22") (str.to.re "'"))) (str.to.re "/i\x0a"))))
; \x2Fcs\x2Fpop4\x2F\s+data\.warezclient\.com
(assert (not (str.in.re X (re.++ (str.to.re "/cs/pop4/") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "data.warezclient.com\x0a")))))
; \bhttp(s?)\:\/\/[a-zA-Z0-9\/\?\-\.\&\(\)_=#]*
(assert (not (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://") (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "/") (str.to.re "?") (str.to.re "-") (str.to.re ".") (str.to.re "&") (str.to.re "(") (str.to.re ")") (str.to.re "_") (str.to.re "=") (str.to.re "#"))) (str.to.re "\x0a")))))
(check-sat)
