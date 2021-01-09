(declare-const X String)
; ShadowNet\s+AID\x2FUser-Agent\x3AFen\xeatreEye\x2Fdss\x2Fcc\.2_0_0\.
(assert (str.in.re X (re.++ (str.to.re "ShadowNet") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "AID/User-Agent:Fen\xeatreEye/dss/cc.2_0_0.\x0a"))))
; /\/setup\/[a-z0-9!-]{50}/Ui
(assert (str.in.re X (re.++ (str.to.re "//setup/") ((_ re.loop 50 50) (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "!") (str.to.re "-"))) (str.to.re "/Ui\x0a"))))
; (^[+]?\d*\.?\d*[1-9]+\d*$)|(^[+]?[1-9]+\d*\.\d*$)
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "+")) (re.* (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.opt (str.to.re "+")) (re.+ (re.range "1" "9")) (re.* (re.range "0" "9")) (str.to.re ".") (re.* (re.range "0" "9")))))))
(check-sat)
