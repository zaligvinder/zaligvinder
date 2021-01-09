(declare-const X String)
; ^(([0-9]{5})*-([0-9]{4}))|([0-9]{5})$
(assert (str.in.re X (re.union (re.++ (re.* ((_ re.loop 5 5) (re.range "0" "9"))) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "\x0a")))))
; log\=\x7BIP\x3A\d\x2Etxt\s+Pcast\x2Edat\x2EToolbar\x7D\x7BOS\x3Atoolsbar\x2Ekuaiso\x2EcomHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "log={IP:") (re.range "0" "9") (str.to.re ".txt") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Pcast.dat.Toolbar}{OS:toolsbar.kuaiso.comHost:\x0a")))))
; ^((([0]?[1-9]|1[0-2])(:|\.)[0-5][0-9]((:|\.)[0-5][0-9])?( )?(AM|am|aM|Am|PM|pm|pM|Pm))|(([0]?[0-9]|1[0-9]|2[0-3])(:|\.)[0-5][0-9]((:|\.)[0-5][0-9])?))$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (re.union (str.to.re ":") (str.to.re ".")) (re.range "0" "5") (re.range "0" "9") (re.opt (re.++ (re.union (str.to.re ":") (str.to.re ".")) (re.range "0" "5") (re.range "0" "9"))) (re.opt (str.to.re " ")) (re.union (str.to.re "AM") (str.to.re "am") (str.to.re "aM") (str.to.re "Am") (str.to.re "PM") (str.to.re "pm") (str.to.re "pM") (str.to.re "Pm"))) (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "0" "9")) (re.++ (str.to.re "1") (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "3"))) (re.union (str.to.re ":") (str.to.re ".")) (re.range "0" "5") (re.range "0" "9") (re.opt (re.++ (re.union (str.to.re ":") (str.to.re ".")) (re.range "0" "5") (re.range "0" "9"))))) (str.to.re "\x0a"))))
; /\x2f\x3fdp\x3d[A-Z0-9]{50}&cb\x3d[0-9]{9}/Ui
(assert (str.in.re X (re.++ (str.to.re "//?dp=") ((_ re.loop 50 50) (re.union (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "&cb=") ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; /\x00hide hide\x22\x09\x22([a-z0-9\x5c\x2e\x3a]+\x2eexe|sh)/
(assert (not (str.in.re X (re.++ (str.to.re "/\x00hide hide\x22\x09\x22") (re.union (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "\x5c") (str.to.re ".") (str.to.re ":"))) (str.to.re ".exe")) (str.to.re "sh")) (str.to.re "/\x0a")))))
(check-sat)
