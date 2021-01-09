(declare-const X String)
; ^\d{1,3}((\.\d{1,3}){3}|(\.\d{1,3}){5})$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.union ((_ re.loop 3 3) (re.++ (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9")))) ((_ re.loop 5 5) (re.++ (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9"))))) (str.to.re "\x0a")))))
; /new (java|org)/Ui
(assert (str.in.re X (re.++ (str.to.re "/new ") (re.union (str.to.re "java") (str.to.re "org")) (str.to.re "/Ui\x0a"))))
; Host\x3a[^\n\r]*A-311\s+lnzzlnbk\x2fpkrm\.finSubject\x3aBasic
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "A-311") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "lnzzlnbk/pkrm.finSubject:Basic\x0a")))))
; ([\d]{4}[ |-]?){2}([\d]{11}[ |-]?)([\d]{2})
(assert (not (str.in.re X (re.++ ((_ re.loop 2 2) (re.++ ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "|") (str.to.re "-"))))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a") ((_ re.loop 11 11) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "|") (str.to.re "-")))))))
; /^"|'+(.*)+"$|'$/
(assert (str.in.re X (re.union (str.to.re "/\x22") (re.++ (re.+ (str.to.re "'")) (re.+ (re.* re.allchar)) (str.to.re "\x22")) (str.to.re "'/\x0a"))))
(check-sat)
