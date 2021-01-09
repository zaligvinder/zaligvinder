(declare-const X String)
; (FR-?)?[0-9A-Z]{2}\ ?[0-9]{9}
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "FR") (re.opt (str.to.re "-")))) ((_ re.loop 2 2) (re.union (re.range "0" "9") (re.range "A" "Z"))) (re.opt (str.to.re " ")) ((_ re.loop 9 9) (re.range "0" "9")) (str.to.re "\x0a"))))
; tid\x3D\x7B\s+Basic.*\x2Ftoolbar\x2F
(assert (not (str.in.re X (re.++ (str.to.re "tid={") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Basic") (re.* re.allchar) (str.to.re "/toolbar/\x0a")))))
; LOG\s+spyblpatHost\x3Ais\x2Ephp
(assert (str.in.re X (re.++ (str.to.re "LOG") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "spyblpatHost:is.php\x0a"))))
(check-sat)
