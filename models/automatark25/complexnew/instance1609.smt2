(declare-const X String)
; ^(([0-2]*[0-9]+[0-9]+)\.([0-2]*[0-9]+[0-9]+)\.([0-2]*[0-9]+[0-9]+)\.([0-2]*[0-9]+[0-9]+))$
(assert (str.in.re X (re.++ (str.to.re "\x0a...") (re.* (re.range "0" "2")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.range "0" "2")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.range "0" "2")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.* (re.range "0" "2")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")))))
; User-Agent\x3A.*Host\x3A.*w3whowww\x2Esogou\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.* re.allchar) (str.to.re "Host:") (re.* re.allchar) (str.to.re "w3whowww.sogou.com\x0a"))))
; \x3Cchat\x3EHost\x3Atid\x3D\x7B
(assert (not (str.in.re X (str.to.re "<chat>\x1bHost:tid={\x0a"))))
; Last.*?(\d+.?\d*)
(assert (not (str.in.re X (re.++ (str.to.re "Last") (re.* re.allchar) (str.to.re "\x0a") (re.+ (re.range "0" "9")) (re.opt re.allchar) (re.* (re.range "0" "9"))))))
(check-sat)
