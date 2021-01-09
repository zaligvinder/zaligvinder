(declare-const X String)
; /^\/[a-f0-9]{8}\.js\?cp\x3d/Umi
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 8 8) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".js?cp=/Umi\x0a"))))
; ^([1-9]|[1-9]\d|[1-2]\d{2}|3[0-6][0-6])$
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "3") (re.range "0" "6") (re.range "0" "6"))) (str.to.re "\x0a"))))
; /\x2eqcp([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.qcp") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
