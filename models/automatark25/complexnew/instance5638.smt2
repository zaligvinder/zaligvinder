(declare-const X String)
; /^[^\s]*\x0D\x0A$/P
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0d\x0a/P\x0a")))))
; \x22reaction\x2Etxt\x22.*Cookie\x3a[^\n\r]*richfind\x2EcomSimpsonFrom\x3A
(assert (str.in.re X (re.++ (str.to.re "\x22reaction.txt\x22") (re.* re.allchar) (str.to.re "Cookie:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "richfind.comSimpsonFrom:\x0a"))))
; Toolbar\x5Chome\/lordofsearchthis
(assert (str.in.re X (str.to.re "Toolbar\x5chome/lordofsearchthis\x0a")))
(check-sat)
