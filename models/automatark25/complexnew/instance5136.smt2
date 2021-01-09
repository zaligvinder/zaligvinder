(declare-const X String)
; ^([a-z0-9]{32})$
(assert (not (str.in.re X (re.++ ((_ re.loop 32 32) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ewps/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wps/i\x0a")))))
; /\/pte\.aspx\?ver=\d\.\d\.\d+\.\d\x26rnd=\d{5}/Ui
(assert (str.in.re X (re.++ (str.to.re "//pte.aspx?ver=") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.range "0" "9") (str.to.re "&rnd=") ((_ re.loop 5 5) (re.range "0" "9")) (str.to.re "/Ui\x0a"))))
; \-?(90|[0-8]?[0-9]\.[0-9]{0,6})\,\-?(180|(1[0-7][0-9]|[0-9]{0,2})\.[0-9]{0,6})
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (str.to.re "90") (re.++ (re.opt (re.range "0" "8")) (re.range "0" "9") (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9")))) (str.to.re ",") (re.opt (str.to.re "-")) (re.union (str.to.re "180") (re.++ (re.union (re.++ (str.to.re "1") (re.range "0" "7") (re.range "0" "9")) ((_ re.loop 0 2) (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 0 6) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ([(]?\d{3}[)]?(-| |.)?\d{3}(-| |.)?\d{4})
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re "-") (str.to.re " ") re.allchar)) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " ") re.allchar)) ((_ re.loop 4 4) (re.range "0" "9")))))
(check-sat)
