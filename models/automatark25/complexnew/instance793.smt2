(declare-const X String)
; Server\u{0}\s+SbAts\s+versionetbuviaebe\u{2f}eqv\.bvv
(assert (str.in_re X (re.++ (str.to_re "Server\u{0}") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "SbAts") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "versionetbuviaebe/eqv.bvv\u{a}"))))
; Web-Mail\dHost\u{3A}Host\u{3A}LOG
(assert (not (str.in_re X (re.++ (str.to_re "Web-Mail") (re.range "0" "9") (str.to_re "Host:Host:LOG\u{a}")))))
; ^(\d{3}-\d{2}-\d{4})|(\d{3}\d{2}\d{4})$
(assert (str.in_re X (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to_re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to_re "\u{a}") ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))))))
; (^[0]{1}$|^[-]?[1-9]{1}\d*$)
(assert (str.in_re X (re.++ (re.union ((_ re.loop 1 1) (str.to_re "0")) (re.++ (re.opt (str.to_re "-")) ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")))) (str.to_re "\u{a}"))))
; <\/?(tag1|tag2)[^>]*\/?>
(assert (str.in_re X (re.++ (str.to_re "<") (re.opt (str.to_re "/")) (re.* (re.comp (str.to_re ">"))) (re.opt (str.to_re "/")) (str.to_re ">\u{a}tag") (re.union (str.to_re "1") (str.to_re "2")))))
(check-sat)
