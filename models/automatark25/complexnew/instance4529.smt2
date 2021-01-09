(declare-const X String)
; ^[a-zA-Z0-9\x20'\.]{8,64}[^\s]$
(assert (str.in.re X (re.++ ((_ re.loop 8 64) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re " ") (str.to.re "'") (str.to.re "."))) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a"))))
; [+]346[0-9]{8}
(assert (not (str.in.re X (re.++ (str.to.re "+346") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2eopus/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".opus/i\x0a"))))
; Referer\x3Adialupvpn\x5fpwdwww\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (str.to.re "Referer:dialupvpn_pwdwww.searchreslt.com\x0a"))))
; /^\/[0-9]{5}\.jar$/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re ".jar/U\x0a"))))
(check-sat)
