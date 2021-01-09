(declare-const X String)
; (([\w-]+://?|www[.])[^\s()<>]+)
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ":/") (re.opt (str.to.re "/"))) (str.to.re "www.")) (re.+ (re.union (str.to.re "(") (str.to.re ")") (str.to.re "<") (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))))
; A + B
(assert (str.in.re X (re.++ (str.to.re "A") (re.+ (str.to.re " ")) (str.to.re " B\x0a"))))
(check-sat)
