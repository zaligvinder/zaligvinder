(declare-const X String)
; https?://[\w./]+\/[\w./]+\.(bmp|png|jpg|gif)
(assert (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://") (re.+ (re.union (str.to.re ".") (str.to.re "/") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "/") (re.+ (re.union (str.to.re ".") (str.to.re "/") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ".") (re.union (str.to.re "bmp") (str.to.re "png") (str.to.re "jpg") (str.to.re "gif")) (str.to.re "\x0a"))))
(check-sat)
