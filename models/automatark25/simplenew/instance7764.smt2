(declare-const X String)
; M\x2Ezip.*w3who.*\x2Fcgi\x2Flogurl\.cgiMyPostdll\x3FHOST\x3A
(assert (not (str.in.re X (re.++ (str.to.re "M.zip") (re.* re.allchar) (str.to.re "w3who") (re.* re.allchar) (str.to.re "/cgi/logurl.cgiMyPostdll?HOST:\x0a")))))
(check-sat)
