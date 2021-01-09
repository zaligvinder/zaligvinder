(declare-const X String)
; /\&h=11$/U
(assert (not (str.in.re X (str.to.re "/&h=11/U\x0a"))))
; ^((\+){0,1}91(\s){0,1}(\-){0,1}(\s){0,1}){0,1}98(\s){0,1}(\-){0,1}(\s){0,1}[1-9]{1}[0-9]{7}$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "+")) (str.to.re "91") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "98") (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (str.to.re "-")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 7 7) (re.range "0" "9")) (str.to.re "\x0a"))))
; filename=\x22Subject\x3awww\x2Eadoptim\x2Ecomreport\x2Fbar_pl\x2Fchk\.fcgi
(assert (str.in.re X (str.to.re "filename=\x22Subject:www.adoptim.comreport/bar_pl/chk.fcgi\x0a")))
; ^[a-zA-Z_:]+[a-zA-Z_:\-\.\d]*$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re ":"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_") (str.to.re ":") (str.to.re "-") (str.to.re ".") (re.range "0" "9"))) (str.to.re "\x0a"))))
; \x2Ehtml\s+IDENTIFYwww\x2Eccnnlc\x2Ecomfilename=\x22Referer\x3A
(assert (str.in.re X (re.++ (str.to.re ".html") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "IDENTIFYwww.ccnnlc.com\x13filename=\x22Referer:\x0a"))))
(check-sat)
