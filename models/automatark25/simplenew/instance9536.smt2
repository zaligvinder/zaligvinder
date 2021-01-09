(declare-const X String)
; jquery\-(\d|\.)*\.min\.js
(assert (str.in.re X (re.++ (str.to.re "jquery-") (re.* (re.union (re.range "0" "9") (str.to.re "."))) (str.to.re ".min.js\x0a"))))
(check-sat)
