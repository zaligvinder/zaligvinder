(declare-const X String)
; ^(net.tcp\://|(ht|f)tp(s?)\://)\S+
(assert (str.in_re X (re.++ (re.union (re.++ (str.to_re "net") re.allchar (str.to_re "tcp://")) (re.++ (re.union (str.to_re "ht") (str.to_re "f")) (str.to_re "tp") (re.opt (str.to_re "s")) (str.to_re "://"))) (re.+ (re.comp (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}")))) (str.to_re "\u{a}"))))
(check-sat)
