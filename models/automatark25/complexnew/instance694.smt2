(declare-const X String)
; ^[1-5]$
(assert (str.in.re X (re.++ (re.range "1" "5") (str.to.re "\x0a"))))
; \x2Fimages\x2Fnocache\x2Ftr\x2Fgca\x2Fm\.gif\?
(assert (not (str.in.re X (str.to.re "/images/nocache/tr/gca/m.gif?\x0a"))))
; /\/index\d{9}\.asp/i
(assert (str.in.re X (re.++ (str.to.re "//index") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re ".asp/i\x0a"))))
; SecureNet\sHost\x3AX-Mailer\x3Aas\x2Estarware\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "SecureNet") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:X-Mailer:\x13as.starware.com\x0a")))))
; dll\x3F\w+updates\w+Host\x3aSoftwareHost\x3Ajoke
(assert (str.in.re X (re.++ (str.to.re "dll?") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "updates") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:SoftwareHost:joke\x0a"))))
(check-sat)
