(declare-const X String)
; \x22reaction\x2Etxt\x22.*Cookie\x3a[^\n\r]*richfind\x2EcomSimpsonFrom\x3A
(assert (not (str.in.re X (re.++ (str.to.re "\x22reaction.txt\x22") (re.* re.allchar) (str.to.re "Cookie:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "richfind.comSimpsonFrom:\x0a")))))
(check-sat)
