(declare-const X String)
; SpyAgent\d+nick_name=CIA-Test\d+url=http\x3A\d+\x2FNFO\x2CRegistered\x28BDLL\x29
(assert (not (str.in.re X (re.++ (str.to.re "SpyAgent") (re.+ (re.range "0" "9")) (str.to.re "nick_name=CIA-Test") (re.+ (re.range "0" "9")) (str.to.re "url=http:\x1b") (re.+ (re.range "0" "9")) (str.to.re "/NFO,Registered(BDLL)\x13\x0a")))))
; /\x2exfdl([\?\x5c\x2f]|$)/miU
(assert (not (str.in.re X (re.++ (str.to.re "/.xfdl") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/miU\x0a")))))
; </?[a-z][a-z0-9]*[^<>]*>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.opt (str.to.re "/")) (re.range "a" "z") (re.* (re.union (re.range "a" "z") (re.range "0" "9"))) (re.* (re.union (str.to.re "<") (str.to.re ">"))) (str.to.re ">\x0a")))))
(check-sat)
