(declare-const X String)
; ^(20|21|22|23|[0-1]\d)[0-5]\d$
(assert (str.in.re X (re.++ (re.union (str.to.re "20") (str.to.re "21") (str.to.re "22") (str.to.re "23") (re.++ (re.range "0" "1") (re.range "0" "9"))) (re.range "0" "5") (re.range "0" "9") (str.to.re "\x0a"))))
; \\s\\d{2}[-]\\w{3}-\\d{4}
(assert (str.in.re X (re.++ (str.to.re "\x5cs\x5c") ((_ re.loop 2 2) (str.to.re "d")) (str.to.re "-\x5c") ((_ re.loop 3 3) (str.to.re "w")) (str.to.re "-\x5c") ((_ re.loop 4 4) (str.to.re "d")) (str.to.re "\x0a"))))
; M\x2Ezip.*w3who.*\x2Fcgi\x2Flogurl\.cgiMyPostdll\x3FHOST\x3A
(assert (not (str.in.re X (re.++ (str.to.re "M.zip") (re.* re.allchar) (str.to.re "w3who") (re.* re.allchar) (str.to.re "/cgi/logurl.cgiMyPostdll?HOST:\x0a")))))
; ^(([-\w \.]+)|(""[-\w \.]+"") )?<([\w\-\.]+)@((\[([0-9]{1,3}\.){3}[0-9]{1,3}\])|(([\w\-]+\.)+)([a-zA-Z]{2,4}))>$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.+ (re.union (str.to.re "-") (str.to.re " ") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.++ (str.to.re " \x22\x22") (re.+ (re.union (str.to.re "-") (str.to.re " ") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x22\x22")))) (str.to.re "<") (re.+ (re.union (str.to.re "-") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "@") (re.union (re.++ (str.to.re "[") ((_ re.loop 3 3) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "."))) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re "]")) (re.++ (re.+ (re.++ (re.+ (re.union (str.to.re "-") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "."))) ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (str.to.re ">\x0a")))))
(check-sat)
