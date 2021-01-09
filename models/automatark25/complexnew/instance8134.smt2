(declare-const X String)
; /\x2ejpx([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jpx") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; /\/click\?sid=\w{40}\&cid=/Ui
(assert (str.in.re X (re.++ (str.to.re "//click?sid=") ((_ re.loop 40 40) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "&cid=/Ui\x0a"))))
(check-sat)
