(declare-const X String)
; downloads\x2Emorpheus\x2Ecom\x2Frotation
(assert (not (str.in.re X (str.to.re "downloads.morpheus.com/rotation\x0a"))))
; ^(\d{4},?)+$
(assert (not (str.in.re X (re.++ (re.+ (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re ",")))) (str.to.re "\x0a")))))
; ^[A-Za-z]{1,2}[\d]{1,2}([A-Za-z])?\s?[\d][A-Za-z]{2}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (re.union (re.range "A" "Z") (re.range "a" "z"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.range "0" "9") ((_ re.loop 2 2) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a")))))
; ^(.)+\.(jpg|jpeg|JPG|JPEG)$
(assert (str.in.re X (re.++ (re.+ re.allchar) (str.to.re ".") (re.union (str.to.re "jpg") (str.to.re "jpeg") (str.to.re "JPG") (str.to.re "JPEG")) (str.to.re "\x0a"))))
; Authorization\x3a\d+lnzzlnbk\x2fpkrm\.fin
(assert (not (str.in.re X (re.++ (str.to.re "Authorization:") (re.+ (re.range "0" "9")) (str.to.re "lnzzlnbk/pkrm.fin\x0a")))))
(check-sat)
