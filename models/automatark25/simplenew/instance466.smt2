(declare-const X String)
; https?://[\w./]+\/[\w./]+\.(bmp|png|jpg|gif)
(assert (not (str.in_re X (re.++ (str.to_re "http") (re.opt (str.to_re "s")) (str.to_re "://") (re.+ (re.union (str.to_re ".") (str.to_re "/") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "/") (re.+ (re.union (str.to_re ".") (str.to_re "/") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ".") (re.union (str.to_re "bmp") (str.to_re "png") (str.to_re "jpg") (str.to_re "gif")) (str.to_re "\u{a}")))))
(check-sat)
