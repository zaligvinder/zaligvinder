(declare-const X String)
; ^((\+)?(\d{2}[-])?(\d{10}){1})?(\d{11}){0,1}?$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) (re.opt (re.++ ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-"))) ((_ re.loop 1 1) ((_ re.loop 10 10) (re.range "0" "9"))))) (re.opt ((_ re.loop 11 11) (re.range "0" "9"))) (str.to.re "\x0a"))))
; /\x2exslt([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.xslt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /[^&]+&[a-z]=[a-f0-9]{16}&[a-z]=[a-f0-9]{16}$/U
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&") (re.range "a" "z") (str.to.re "=") ((_ re.loop 16 16) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "&") (re.range "a" "z") (str.to.re "=") ((_ re.loop 16 16) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/U\x0a")))))
; User-Agent\x3A\s+\x7D\x7BPassword\x3A\d+information
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Password:\x1b") (re.+ (re.range "0" "9")) (str.to.re "information\x0a"))))
; \x2Fpagead\x2Fads\?\d+ocllceclbhs\x2fgth
(assert (str.in.re X (re.++ (str.to.re "/pagead/ads?") (re.+ (re.range "0" "9")) (str.to.re "ocllceclbhs/gth\x0a"))))
(check-sat)
