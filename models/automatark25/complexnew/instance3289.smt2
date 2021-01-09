(declare-const X String)
; ^[ \w]{3,}([A-Za-z]\.)?([ \w]*\#\d+)?(\r\n| )[ \w]{3,},\x20[A-Za-z]{2}\x20\d{5}(-\d{4})?$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (re.range "A" "Z") (re.range "a" "z")) (str.to.re "."))) (re.opt (re.++ (re.* (re.union (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "#") (re.+ (re.range "0" "9")))) (re.union (str.to.re "\x0d\x0a") (str.to.re " ")) (str.to.re ", ") ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re " ") ((_ re.loop 5 5) (re.range "0" "9")) (re.opt (re.++ (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9")))) (str.to.re "\x0a") ((_ re.loop 3 3) (re.union (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) ((_ re.loop 3 3) (re.union (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.* (re.union (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
; /_X(86|64)&a4=/P
(assert (str.in.re X (re.++ (str.to.re "/_X") (re.union (str.to.re "86") (str.to.re "64")) (str.to.re "&a4=/P\x0a"))))
; ^[1-9]{1}[0-9]{0,2}([\.\,]?[0-9]{3})*$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (re.opt (re.union (str.to.re ".") (str.to.re ","))) ((_ re.loop 3 3) (re.range "0" "9")))) (str.to.re "\x0a")))))
; thereHost\x3Aselect\x2FGetwww\x2e2-seek\x2ecom\x2fsearch
(assert (not (str.in.re X (str.to.re "thereHost:select/Getwww.2-seek.com/search\x0a"))))
; HWAE[^\n\r]*Email[^\n\r]*User-Agent\x3AUser-Agent\x3awowokayHost\x3A
(assert (str.in.re X (re.++ (str.to.re "HWAE") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Email") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "User-Agent:User-Agent:wowokayHost:\x0a"))))
(check-sat)
