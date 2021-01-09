(declare-const X String)
; /^Host\x3a[^\x0d\x0a]+\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\x3a\d{1,5}\x0d?$/mi
(assert (not (str.in.re X (re.++ (str.to.re "/Host:") (re.+ (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")) (re.opt (str.to.re "\x0d")) (str.to.re "/mi\x0a")))))
; /\x2ejif([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.jif") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
; ^(\d{1}|\d{2}|\d{3})(\.\d{3})*?$
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 3 3) (re.range "0" "9"))) (re.* (re.++ (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ChildWebGuardian\d+Subject\x3A
(assert (str.in.re X (re.++ (str.to.re "ChildWebGuardian") (re.+ (re.range "0" "9")) (str.to.re "Subject:\x0a"))))
(check-sat)
