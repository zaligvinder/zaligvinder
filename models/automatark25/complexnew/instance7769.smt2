(declare-const X String)
; /filename=[^\n]*\x2epjpeg/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pjpeg/i\x0a")))))
; (\/\*(\s*|.*?)*\*\/)|(\/\/.*)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "/*") (re.* (re.union (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.* re.allchar))) (str.to.re "*/")) (re.++ (str.to.re "\x0a//") (re.* re.allchar))))))
; ^([a-z0-9]+[.+-])*([a-z0-9]+)+@(([a-z0-9]+[.-])+([a-z]{2,})$|(([0-9]|[1-9][0-9]|1[0-9]{1,2}|2[0-4][0-9]|25[0-5])(\.|$)){4})
(assert (str.in.re X (re.++ (re.* (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.union (str.to.re ".") (str.to.re "+") (str.to.re "-")))) (re.+ (re.+ (re.union (re.range "a" "z") (re.range "0" "9")))) (str.to.re "@") (re.union (re.++ (re.+ (re.++ (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (re.union (str.to.re ".") (str.to.re "-")))) ((_ re.loop 2 2) (re.range "a" "z")) (re.* (re.range "a" "z"))) ((_ re.loop 4 4) (re.++ (re.union (re.range "0" "9") (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to.re "1") ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5"))) (str.to.re ".")))) (str.to.re "\x0a"))))
; <!*[^<>]*>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (str.to.re "!")) (re.* (re.union (str.to.re "<") (str.to.re ">"))) (str.to.re ">\x0a")))))
; www\x2Eweepee\x2Ecom\d+metaresults\.copernic\.com\s+
(assert (not (str.in.re X (re.++ (str.to.re "www.weepee.com\x1b") (re.+ (re.range "0" "9")) (str.to.re "metaresults.copernic.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
(check-sat)
