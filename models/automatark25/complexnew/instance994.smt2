(declare-const X String)
; /\/[a-zA-Z0-9]{32}\.jar/U
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re ".jar/U\x0a"))))
; \x28robert\x40blackcastlesoft\x2Ecom\x29
(assert (not (str.in.re X (str.to.re "(robert@blackcastlesoft.com)\x0a"))))
; \x22reaction\x2Etxt\x22.*Cookie\x3a[^\n\r]*richfind\x2EcomSimpsonFrom\x3A
(assert (str.in.re X (re.++ (str.to.re "\x22reaction.txt\x22") (re.* re.allchar) (str.to.re "Cookie:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "richfind.comSimpsonFrom:\x0a"))))
(check-sat)
