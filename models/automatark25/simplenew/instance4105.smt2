(declare-const X String)
; wjpropqmlpohj\u{2f}lo\d+Host\u{3A}User-Agent\u{3A}
(assert (not (str.in_re X (re.++ (str.to_re "wjpropqmlpohj/lo") (re.+ (re.range "0" "9")) (str.to_re "Host:User-Agent:\u{a}")))))
(check-sat)
