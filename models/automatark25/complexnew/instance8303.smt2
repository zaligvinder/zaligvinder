(declare-const X String)
; ^[1-9]{1}[0-9]{3}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^((([\(]?[2-9]{1}[0-9]{2}[\)]?)|([2-9]{1}[0-9]{2}\.?)){1}[ ]?[2-9]{1}[0-9]{2}[\-\.]{1}[0-9]{4})([ ]?[xX]{1}[ ]?[0-9]{3,4})?$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re " ")) ((_ re.loop 1 1) (re.union (str.to.re "x") (str.to.re "X"))) (re.opt (str.to.re " ")) ((_ re.loop 3 4) (re.range "0" "9")))) (str.to.re "\x0a") ((_ re.loop 1 1) (re.union (re.++ (re.opt (str.to.re "(")) ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re ")"))) (re.++ ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (str.to.re "."))))) (re.opt (str.to.re " ")) ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re "."))) ((_ re.loop 4 4) (re.range "0" "9")))))
; onAlertMGS-Internal-Web-Manager
(assert (str.in.re X (str.to.re "onAlertMGS-Internal-Web-Manager\x0a")))
; Agent.*as\x2Estarware\x2Ecom\s+ServerToolbarcojud\x2Edmcast\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "Agent") (re.* re.allchar) (str.to.re "as.starware.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ServerToolbarcojud.dmcast.com\x0a"))))
; /filename=[^\n]*\x2ebak/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".bak/i\x0a")))))
(check-sat)
