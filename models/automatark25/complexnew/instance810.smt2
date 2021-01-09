(declare-const X String)
; /\x2ecov([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.cov") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; SpyAgent\d+nick_name=CIA-Test\d+url=http\x3A\d+\x2FNFO\x2CRegistered\x28BDLL\x29
(assert (str.in.re X (re.++ (str.to.re "SpyAgent") (re.+ (re.range "0" "9")) (str.to.re "nick_name=CIA-Test") (re.+ (re.range "0" "9")) (str.to.re "url=http:\x1b") (re.+ (re.range "0" "9")) (str.to.re "/NFO,Registered(BDLL)\x13\x0a"))))
; ^[a-zA-Z0-9._-]+$
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "-"))) (str.to.re "\x0a")))))
(check-sat)
