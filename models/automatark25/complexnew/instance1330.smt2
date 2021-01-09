(declare-const X String)
; /\x2Esum([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.sum") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; \.exe\s+ZC-Bridge\s+TPSystemHost\x3AHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re ".exe") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ZC-Bridge") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "TPSystemHost:Host:\x0a")))))
; ^1+0+$
(assert (str.in.re X (re.++ (re.+ (str.to.re "1")) (re.+ (str.to.re "0")) (str.to.re "\x0a"))))
; /^\x7b\x22[a-f0-9]{4}\x22\x3a\x22([a-f0-9]{32}|false)\x22,/smiP
(assert (not (str.in.re X (re.++ (str.to.re "/{\x22") ((_ re.loop 4 4) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "\x22:\x22") (re.union ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "false")) (str.to.re "\x22,/smiP\x0a")))))
; ^0[1-6]{1}(([0-9]{2}){4})|((\s[0-9]{2}){4})|((-[0-9]{2}){4})$
(assert (str.in.re X (re.union (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.range "1" "6")) ((_ re.loop 4 4) ((_ re.loop 2 2) (re.range "0" "9")))) ((_ re.loop 4 4) (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 2 2) (re.range "0" "9")))) (re.++ ((_ re.loop 4 4) (re.++ (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
