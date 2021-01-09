(declare-const X String)
; ActMonHost\x3ABossUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "ActMonHost:BossUser-Agent:\x0a"))))
; (\$(([0-9]?)[a-zA-Z]+)([0-9]?))
(assert (str.in.re X (re.++ (str.to.re "\x0a$") (re.opt (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z"))))))
; Host\x3a[^\n\r]*snprtz\x7Cdialno\s+Agent\s+Host\x3AUser-Agent\x3A\.cfgUser-Agent\x3Axbqyosoe\x2fcpvm
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "snprtz|dialno") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Agent") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:User-Agent:.cfgUser-Agent:xbqyosoe/cpvm\x0a"))))
; /\x2fib2\x2f$/U
(assert (not (str.in.re X (str.to.re "//ib2//U\x0a"))))
; Host\x3A\s+\x2Ftoolbar\x2Fsupremetb\s+wjpropqmlpohj\x2flo\x2Ftoolbar\x2Fsupremetb
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/toolbar/supremetb") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "wjpropqmlpohj/lo/toolbar/supremetb\x0a"))))
(check-sat)
