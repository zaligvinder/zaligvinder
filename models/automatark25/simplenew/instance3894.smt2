(declare-const X String)
; \x2Ftoolbar\x2Fsupremetb\s+wjpropqmlpohj\x2flo\s+resultsmaster\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "/toolbar/supremetb") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "wjpropqmlpohj/lo") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "resultsmaster.com\x13\x0a"))))
(check-sat)
