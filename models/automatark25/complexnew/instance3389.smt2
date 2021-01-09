(declare-const X String)
; ^(\-)?1000([.][0]{1,3})?$|^(\-)?\d{1,3}$|^(\-)?\d{1,3}([.]\d{1,3})$|^(\-)?([.]\d{1,3})$
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) (str.to.re "1000") (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 3) (str.to.re "0"))))) (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") ((_ re.loop 1 3) (re.range "0" "9"))) (re.++ (re.opt (str.to.re "-")) (str.to.re "\x0a.") ((_ re.loop 1 3) (re.range "0" "9"))))))
; /^\+?([0-9]{2})\)?[-. ]?([0-9]{4})[-. ]?([0-9]{4})$/;
(assert (not (str.in.re X (re.++ (str.to.re "/") (re.opt (str.to.re "+")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re ".") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "/;\x0a")))))
; \x2Fcgi\x2Flogurl\.cgi\s+Host\x3AUser-Agent\x3ASurveillancecom
(assert (str.in.re X (re.++ (str.to.re "/cgi/logurl.cgi") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:User-Agent:Surveillance\x13com\x0a"))))
(check-sat)
