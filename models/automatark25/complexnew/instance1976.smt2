(declare-const X String)
; /\x2emid([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.mid") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Host\x3A\s+Online\s+ocllceclbhs\x2fgth
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Online") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ocllceclbhs/gth\x0a")))))
; ^\d* \d*\/{1}\d*$|^\d*$
(assert (str.in.re X (re.union (re.++ (re.* (re.range "0" "9")) (str.to.re " ") (re.* (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re "/")) (re.* (re.range "0" "9"))) (re.++ (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; \.exe\s+v2\x2E0\s+smrtshpr-cs-
(assert (str.in.re X (re.++ (str.to.re ".exe") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "v2.0") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "smrtshpr-cs-\x13\x0a"))))
; ^04[0-9]{8}
(assert (str.in.re X (re.++ (str.to.re "04") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
