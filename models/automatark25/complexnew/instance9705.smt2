(declare-const X String)
; /\(\?[gimxs]{1,5}\)/
(assert (str.in.re X (re.++ (str.to.re "/(?") ((_ re.loop 1 5) (re.union (str.to.re "g") (str.to.re "i") (str.to.re "m") (str.to.re "x") (str.to.re "s"))) (str.to.re ")/\x0a"))))
; LOG\s+spyblpatHost\x3Ais\x2Ephp
(assert (not (str.in.re X (re.++ (str.to.re "LOG") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblpatHost:is.php\x0a")))))
; hirmvtg\x2fggqh\.kqh\w+whenu\x2Ecom\w+weatherHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "hirmvtg/ggqh.kqh\x1b") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "whenu.com\x13") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "weatherHost:User-Agent:\x0a")))))
; (0?[1-9]|[12][0-9]|3[01])[.](0?[1-9]|1[012])[.]\d{4}
(assert (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1")))) (str.to.re ".") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) (str.to.re ".") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; Desktop.*Hello\x2E.*Referer\x3AToolbar
(assert (not (str.in.re X (re.++ (str.to.re "Desktop") (re.* re.allchar) (str.to.re "Hello.") (re.* re.allchar) (str.to.re "Referer:Toolbar\x0a")))))
(check-sat)
