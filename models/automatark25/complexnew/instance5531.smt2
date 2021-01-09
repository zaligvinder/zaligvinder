(declare-const X String)
; /\x2esvgz?([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.svg") (re.opt (str.to.re "z")) (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^(http(s)?\:\/\/\S+)\s
(assert (not (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0ahttp") (re.opt (str.to.re "s")) (str.to.re "://") (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))))
; /^POST\x20\x2f[A-F\d]{42}\x20HTTP/
(assert (str.in.re X (re.++ (str.to.re "/POST /") ((_ re.loop 42 42) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re " HTTP/\x0a"))))
; \.([A-Za-z0-9]{2,5}($|\b\?))
(assert (not (str.in.re X (re.++ (str.to.re ".\x0a") ((_ re.loop 2 5) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9"))) (str.to.re "?")))))
(check-sat)
