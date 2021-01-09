(declare-const X String)
; Supervisor\s+User-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "Supervisor") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:\x0a"))))
; /^[a-zA-Z\s]+$/
(assert (str.in.re X (re.++ (str.to.re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/\x0a"))))
; (01*0|1)*
(assert (not (str.in.re X (re.++ (re.* (re.union (re.++ (str.to.re "0") (re.* (str.to.re "1")) (str.to.re "0")) (str.to.re "1"))) (str.to.re "\x0a")))))
; /\x2ettf([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.ttf") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /^SSID=[a-zA-Z\d]{43}\x3B\x20A=[0-3]$/C
(assert (not (str.in.re X (re.++ (str.to.re "/SSID=") ((_ re.loop 43 43) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "; A=") (re.range "0" "3") (str.to.re "/C\x0a")))))
(check-sat)
