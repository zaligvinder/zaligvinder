(declare-const X String)
; Host\x3A\s+User-Agent\x3A.*v\x3BApofisToolbarUser
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "v;ApofisToolbarUser\x0a"))))
; ^[0-2]?[1-9]{1}$|^3{1}[01]{1}$
(assert (not (str.in.re X (re.union (re.++ (re.opt (re.range "0" "2")) ((_ re.loop 1 1) (re.range "1" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "3")) ((_ re.loop 1 1) (re.union (str.to.re "0") (str.to.re "1"))) (str.to.re "\x0a"))))))
(check-sat)
