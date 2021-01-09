(declare-const X String)
; ^(net.tcp\://|(ht|f)tp(s?)\://)\S+
(assert (str.in.re X (re.++ (re.union (re.++ (str.to.re "net") re.allchar (str.to.re "tcp://")) (re.++ (re.union (str.to.re "ht") (str.to.re "f")) (str.to.re "tp") (re.opt (str.to.re "s")) (str.to.re "://"))) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a"))))
(check-sat)
