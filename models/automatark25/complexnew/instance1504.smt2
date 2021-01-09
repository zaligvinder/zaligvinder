(declare-const X String)
; M\x2Ezip.*w3who.*\x2Fcgi\x2Flogurl\.cgiMyPostdll\x3FHOST\x3A
(assert (str.in.re X (re.++ (str.to.re "M.zip") (re.* re.allchar) (str.to.re "w3who") (re.* re.allchar) (str.to.re "/cgi/logurl.cgiMyPostdll?HOST:\x0a"))))
; ^100(\.0{0,2})? *%?$|^\d{1,2}(\.\d{1,2})? *%?$
(assert (str.in.re X (re.union (re.++ (str.to.re "100") (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (str.to.re "0")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%"))) (re.++ ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (re.* (str.to.re " ")) (re.opt (str.to.re "%")) (str.to.re "\x0a")))))
(check-sat)
