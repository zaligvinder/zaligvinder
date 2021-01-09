(declare-const X String)
; ^[-+]?\d+([.,]\d{0,2}){0,1}$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re ".") (str.to.re ",")) ((_ re.loop 0 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; (a|b|c).(a.b)*.b+.c
(assert (str.in.re X (re.++ (re.union (str.to.re "a") (str.to.re "b") (str.to.re "c")) re.allchar (re.* (re.++ (str.to.re "a") re.allchar (str.to.re "b"))) re.allchar (re.+ (str.to.re "b")) re.allchar (str.to.re "c\x0a"))))
; dialupvpn\x5fpwd\d\<title\>Actual\sSpywareStrike\s+fowclxccdxn\x2fuxwn\.ddywww\x2evirusprotectpro\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "dialupvpn_pwd") (re.range "0" "9") (str.to.re "<title>Actual") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "SpywareStrike") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "fowclxccdxn/uxwn.ddywww.virusprotectpro.com\x0a")))))
; DaysLOGHost\x3aHost\x3a\x7D\x7BOS\x3AHost\x3A
(assert (not (str.in.re X (str.to.re "DaysLOGHost:Host:}{OS:Host:\x0a"))))
(check-sat)
