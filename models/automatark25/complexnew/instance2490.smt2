(declare-const X String)
; /\/\d+\.mp3$/U
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re ".mp3/U\x0a"))))
; /^\x2f[a-z\d]{1,8}\.exe$/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 1 8) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re ".exe/Ui\x0a"))))
; (\b)(\w+(\b|\n|\s)){3}
(assert (not (str.in.re X (re.++ ((_ re.loop 3 3) (re.++ (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (str.to.re "\x0a") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a")))))
(check-sat)
