(declare-const X String)
; (ISBN[-]*(1[03])*[ ]*(: ){0,1})*(([0-9Xx][- ]*){13}|([0-9Xx][- ]*){10})
(assert (str.in.re X (re.++ (re.* (re.++ (str.to.re "ISBN") (re.* (str.to.re "-")) (re.* (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "3")))) (re.* (str.to.re " ")) (re.opt (str.to.re ": ")))) (re.union ((_ re.loop 13 13) (re.++ (re.union (re.range "0" "9") (str.to.re "X") (str.to.re "x")) (re.* (re.union (str.to.re "-") (str.to.re " "))))) ((_ re.loop 10 10) (re.++ (re.union (re.range "0" "9") (str.to.re "X") (str.to.re "x")) (re.* (re.union (str.to.re "-") (str.to.re " ")))))) (str.to.re "\x0a"))))
; M\x2Ezip.*w3who.*\x2Fcgi\x2Flogurl\.cgiMyPostdll\x3FHOST\x3A
(assert (not (str.in.re X (re.++ (str.to.re "M.zip") (re.* re.allchar) (str.to.re "w3who") (re.* re.allchar) (str.to.re "/cgi/logurl.cgiMyPostdll?HOST:\x0a")))))
; (?s)/\*.*\*/
(assert (str.in.re X (re.++ (str.to.re "/*") (re.* re.allchar) (str.to.re "*/\x0a"))))
; /\x2edae([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.dae") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
