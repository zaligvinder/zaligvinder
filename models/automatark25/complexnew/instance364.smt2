(declare-const X String)
; PromulGate\s+SbAts.*Uservclxatmlhavj\x2fvsywww\x2Evip-se\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "PromulGate") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SbAts") (re.* re.allchar) (str.to.re "Uservclxatmlhavj/vsywww.vip-se.com\x13\x0a"))))
; dialupvpn\x5fpwd\d\<title\>Actual\sSpywareStrike\s+fowclxccdxn\x2fuxwn\.ddywww\x2evirusprotectpro\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "dialupvpn_pwd") (re.range "0" "9") (str.to.re "<title>Actual") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "SpywareStrike") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "fowclxccdxn/uxwn.ddywww.virusprotectpro.com\x0a")))))
; ("((\\.)|[^\\"])*")
(assert (str.in.re X (re.++ (str.to.re "\x0a\x22") (re.* (re.union (re.++ (str.to.re "\x5c") re.allchar) (str.to.re "\x5c") (str.to.re "\x22"))) (str.to.re "\x22"))))
; /filename=[^\n]*\x2ep2g/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".p2g/i\x0a"))))
; ^(\$)?(\s)?(\-)?((\d+)|(\d{1,3})(\,\d{3})*)(\.\d{2,})?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.union (re.+ (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")) (re.* (re.range "0" "9")))) (str.to.re "\x0a")))))
(check-sat)
