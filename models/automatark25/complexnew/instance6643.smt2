(declare-const X String)
; ^[\w\W]{1,1500}$
(assert (str.in.re X (re.++ ((_ re.loop 1 1500) (re.union (re.comp (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
; \\[\\w{2}\\]
(assert (str.in.re X (re.++ (str.to.re "\x5c") (re.union (str.to.re "\x5c") (str.to.re "w") (str.to.re "{") (str.to.re "2") (str.to.re "}")) (str.to.re "\x0a"))))
; connection\sHost\x3aSubject\x3A\.bmp
(assert (str.in.re X (re.++ (str.to.re "connection") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:Subject:.bmp\x0a"))))
; /[^\x20-\x7e\r\n]{3}/P
(assert (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 3 3) (re.union (re.range " " "~") (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "/P\x0a"))))
; /\x2eexe([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.exe") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
