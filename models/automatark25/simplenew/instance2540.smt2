(declare-const X String)
; info\s+wjpropqmlpohj\x2flo\x2Ftoolbar\x2Fsupremetbhoroscope2Cookie\x3a
(assert (not (str.in.re X (re.++ (str.to.re "info") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "wjpropqmlpohj/lo/toolbar/supremetbhoroscope2Cookie:\x0a")))))
(check-sat)
