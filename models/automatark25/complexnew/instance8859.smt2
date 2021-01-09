(declare-const X String)
; started\x2E.*\/cgi-bin\/PopupV
(assert (not (str.in.re X (re.++ (str.to.re "started.") (re.* re.allchar) (str.to.re "/cgi-bin/PopupV\x0a")))))
; Basic\s+news\s+CD\x2Furl=Host\x3a
(assert (not (str.in.re X (re.++ (str.to.re "Basic") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "news") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "CD/url=Host:\x0a")))))
; ^(((0[1-9]{1})|(1[0-2]{1}))\/?(([0-2]{1}[1-9]{1})|(3[0-1]{1}))\/?(([12]{1}[0-9]{1})?[0-9]{2}) ?(([01]{1}[0-9]{1})|(2[0-4]{1}))\:?([0-5]{1}[0-9]{1}))$
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.range "1" "9"))) (re.++ (str.to.re "1") ((_ re.loop 1 1) (re.range "0" "2")))) (re.opt (str.to.re "/")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "2")) ((_ re.loop 1 1) (re.range "1" "9"))) (re.++ (str.to.re "3") ((_ re.loop 1 1) (re.range "0" "1")))) (re.opt (str.to.re "/")) (re.opt (str.to.re " ")) (re.union (re.++ ((_ re.loop 1 1) (re.union (str.to.re "0") (str.to.re "1"))) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ (str.to.re "2") ((_ re.loop 1 1) (re.range "0" "4")))) (re.opt (str.to.re ":")) (re.opt (re.++ ((_ re.loop 1 1) (re.union (str.to.re "1") (str.to.re "2"))) ((_ re.loop 1 1) (re.range "0" "9")))) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "0" "5")) ((_ re.loop 1 1) (re.range "0" "9")))))
; /^(\/\d{8,11})?(\/\d)?\/1[34]\d{8}\.htm$/U
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.opt (re.++ (str.to.re "/") ((_ re.loop 8 11) (re.range "0" "9")))) (re.opt (re.++ (str.to.re "/") (re.range "0" "9"))) (str.to.re "/1") (re.union (str.to.re "3") (str.to.re "4")) ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re ".htm/U\x0a")))))
; ^\b\d{2,3}-*\d{7}\b$
(assert (str.in.re X (re.++ ((_ re.loop 2 3) (re.range "0" "9")) (re.* (str.to.re "-")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
(check-sat)
