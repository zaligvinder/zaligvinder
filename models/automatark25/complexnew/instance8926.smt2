(declare-const X String)
; <\s*?[^>]+\s*?>
(assert (str.in.re X (re.++ (str.to.re "<") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.+ (re.comp (str.to.re ">"))) (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re ">\x0a"))))
; /^\/\?[A-Za-z0-9_-]{15}=l3S/U
(assert (str.in.re X (re.++ (str.to.re "//?") ((_ re.loop 15 15) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re "-"))) (str.to.re "=l3S/U\x0a"))))
; /\/setup_b\.asp\?prj=\d\x26pid=[^\r\n]*\x26mac=/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//setup_b.asp?prj=") (re.range "0" "9") (str.to.re "&pid=") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "&mac=/Ui\x0a")))))
(check-sat)
