(declare-const X String)
; mywayHost\x3Awww\x2Eeblocs\x2Ecom
(assert (not (str.in.re X (str.to.re "mywayHost:www.eblocs.com\x1b\x0a"))))
; /^\/([a-zA-Z0-9-&+ ]+[^\/?]=){5}/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 5 5) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "&") (str.to.re "+") (str.to.re " "))) (re.union (str.to.re "/") (str.to.re "?")) (str.to.re "="))) (str.to.re "/Ui\x0a"))))
; /filename=[^\n]*\x2ewm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wm/i\x0a")))))
; TPSystemHost\x3a\x7D\x7BUser\x3AAlert\x2Fcgi-bin\x2FX-Mailer\x3A
(assert (not (str.in.re X (str.to.re "TPSystemHost:}{User:Alert/cgi-bin/X-Mailer:\x13\x0a"))))
(check-sat)
