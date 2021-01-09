(declare-const X String)
; Server\x00\s+SbAts\s+versionetbuviaebe\x2feqv\.bvv
(assert (str.in.re X (re.++ (str.to.re "Server\x00") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SbAts") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "versionetbuviaebe/eqv.bvv\x0a"))))
; Web-Mail\dHost\x3AHost\x3ALOG
(assert (not (str.in.re X (re.++ (str.to.re "Web-Mail") (re.range "0" "9") (str.to.re "Host:Host:LOG\x0a")))))
; ^(\d{3}-\d{2}-\d{4})|(\d{3}\d{2}\d{4})$
(assert (str.in.re X (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))))))
; (^[0]{1}$|^[-]?[1-9]{1}\d*$)
(assert (str.in.re X (re.++ (re.union ((_ re.loop 1 1) (str.to.re "0")) (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to.re "\x0a"))))
; <\/?(tag1|tag2)[^>]*\/?>
(assert (str.in.re X (re.++ (str.to.re "<") (re.opt (str.to.re "/")) (re.* (re.comp (str.to.re ">"))) (re.opt (str.to.re "/")) (str.to.re ">\x0atag") (re.union (str.to.re "1") (str.to.re "2")))))
(check-sat)
