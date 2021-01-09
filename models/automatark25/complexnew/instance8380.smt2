(declare-const X String)
; ^(([0-9]{3})[-]?)*[0-9]{6,7}$
(assert (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re "-")))) ((_ re.loop 6 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(((ht|f)tp(s?))\://).*$
(assert (str.in.re X (re.++ (re.* re.allchar) (str.to.re "\x0a://") (re.union (str.to.re "ht") (str.to.re "f")) (str.to.re "tp") (re.opt (str.to.re "s")))))
; /^images.php\?t=\d{2,7}$/U
(assert (not (str.in.re X (re.++ (str.to.re "/images") re.allchar (str.to.re "php?t=") ((_ re.loop 2 7) (re.range "0" "9")) (str.to.re "/U\x0a")))))
; named.*Host\x3A\s+zmnjgmomgbdz\x2fzzmw\.gzt
(assert (not (str.in.re X (re.++ (str.to.re "named") (re.* re.allchar) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "zmnjgmomgbdz/zzmw.gzt\x0a")))))
; /#([1-9]){2}([1-9]){2}([1-9]){2}/
(assert (not (str.in.re X (re.++ (str.to.re "/#") ((_ re.loop 2 2) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re "/\x0a")))))
(check-sat)
