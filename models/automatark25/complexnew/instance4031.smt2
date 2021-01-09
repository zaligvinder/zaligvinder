(declare-const X String)
; /\/3001[0-9A-F]{262,304}/
(assert (str.in.re X (re.++ (str.to.re "//3001") ((_ re.loop 262 304) (re.union (re.range "0" "9") (re.range "A" "F"))) (str.to.re "/\x0a"))))
; ^\+?\(?\d+\)?(\s|\-|\.)?\d{1,3}(\s|\-|\.)?\d{4}$
(assert (str.in.re X (re.++ (re.opt (str.to.re "+")) (re.opt (str.to.re "(")) (re.+ (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\.php\x3fw\x3d\d+\x26n\x3d\d+/U
(assert (not (str.in.re X (re.++ (str.to.re "/.php?w=") (re.+ (re.range "0" "9")) (str.to.re "&n=") (re.+ (re.range "0" "9")) (str.to.re "/U\x0a")))))
(check-sat)
