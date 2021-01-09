(declare-const X String)
; /^(([01]?\d?\d|2[0-4]\d|25[0-5])\.){3}([01]?\d?\d|2[0-4]\d|25[0-5])\/(\d{1}|[0-2]{1}\d{1}|3[0-2])$/
(assert (not (str.in.re X (re.++ (str.to.re "/") ((_ re.loop 3 3) (re.++ (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re "."))) (re.union (re.++ (re.opt (re.union (str.to.re "0") (str.to.re "1"))) (re.opt (re.range "0" "9")) (re.range "0" "9")) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re "/") (re.union ((_ re.loop 1 1) (re.range "0" "9")) (re.++ ((_ re.loop 1 1) (re.range "0" "2")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to.re "3") (re.range "0" "2"))) (str.to.re "/\x0a")))))
; ^([a-zA-Z ';-]+)$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re " ") (str.to.re "'") (str.to.re ";") (str.to.re "-"))) (str.to.re "\x0a"))))
; ^#?([a-f]|[A-F]|[0-9]){3}(([a-f]|[A-F]|[0-9]){3})?$
(assert (str.in.re X (re.++ (re.opt (str.to.re "#")) ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9"))) (re.opt ((_ re.loop 3 3) (re.union (re.range "a" "f") (re.range "A" "F") (re.range "0" "9")))) (str.to.re "\x0a"))))
; href[ ]*=[ ]*('|\")([^\"'])*('|\")
(assert (not (str.in.re X (re.++ (str.to.re "href") (re.* (str.to.re " ")) (str.to.re "=") (re.* (str.to.re " ")) (re.union (str.to.re "'") (str.to.re "\x22")) (re.* (re.union (str.to.re "\x22") (str.to.re "'"))) (re.union (str.to.re "'") (str.to.re "\x22")) (str.to.re "\x0a")))))
; AID\x2FHost\x3aHourskl\x2Esearch\x2Eneed2find\x2EcomHost\x3aHost\x3A
(assert (str.in.re X (str.to.re "AID/Host:Hourskl.search.need2find.comHost:Host:\x0a")))
(check-sat)
