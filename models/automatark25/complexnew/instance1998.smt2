(declare-const X String)
; User-Agent\x3A\s+community\d+
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "community") (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; OS-www\x2Etopadwarereviews\x2Ecommedia\x2Etop-banners\x2EcomSuccessfully\x21
(assert (str.in.re X (str.to.re "OS-www.topadwarereviews.commedia.top-banners.comSuccessfully!\x0a")))
; ^([1-zA-Z0-1@.\s]{1,255})$
(assert (str.in.re X (re.++ ((_ re.loop 1 255) (re.union (re.range "1" "z") (re.range "A" "Z") (re.range "0" "1") (str.to.re "@") (str.to.re ".") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; (.*)-----(BEGIN|END)([^-]*)-----(.*)
(assert (not (str.in.re X (re.++ (re.* re.allchar) (str.to.re "-----") (re.union (str.to.re "BEGIN") (str.to.re "END")) (re.* (re.comp (str.to.re "-"))) (str.to.re "-----") (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
