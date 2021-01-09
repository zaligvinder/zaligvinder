(declare-const X String)
; wjpropqmlpohj\x2flo\d+Host\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "wjpropqmlpohj/lo") (re.+ (re.range "0" "9")) (str.to.re "Host:User-Agent:\x0a")))))
(check-sat)
