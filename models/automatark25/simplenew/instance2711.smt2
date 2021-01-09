(declare-const X String)
; Peer\s+CodeguruBrowser.*UNSEEN\x22Host\x3Ahirmvtg\x2fggqh\.kqh
(assert (str.in.re X (re.++ (str.to.re "Peer") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CodeguruBrowser") (re.* re.allchar) (str.to.re "UNSEEN\x22Host:hirmvtg/ggqh.kqh\x1b\x0a"))))
(check-sat)
