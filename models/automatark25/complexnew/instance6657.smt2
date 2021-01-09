(declare-const X String)
; Peer\s+CodeguruBrowser.*UNSEEN\x22Host\x3Ahirmvtg\x2fggqh\.kqh
(assert (not (str.in.re X (re.++ (str.to.re "Peer") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CodeguruBrowser") (re.* re.allchar) (str.to.re "UNSEEN\x22Host:hirmvtg/ggqh.kqh\x1b\x0a")))))
; Spy\dccecaedbebfcaf\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Spy") (re.range "0" "9") (str.to.re "ccecaedbebfcaf.com\x0a"))))
; (</?\w*[^<>]*>)
(assert (str.in.re X (re.++ (str.to.re "\x0a<") (re.opt (str.to.re "/")) (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re "<") (str.to.re ">"))) (str.to.re ">"))))
(check-sat)
