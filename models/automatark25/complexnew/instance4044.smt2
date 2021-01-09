(declare-const X String)
; Host\x3A\s+Online100013Agentsvr\x5E\x5EMerlin
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Online100013Agentsvr^^Merlin\x13\x0a"))))
; (([\w-]+://?|www[.])[^\s()<>]+)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ":/") (re.opt (str.to.re "/"))) (str.to.re "www.")) (re.+ (re.union (str.to.re "(") (str.to.re ")") (str.to.re "<") (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))))
(check-sat)
