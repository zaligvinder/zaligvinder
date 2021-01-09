(declare-const X String)
; ^([(][1-9]{2}[)] )?[0-9]{4}[-]?[0-9]{4}$
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "(") ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re ") "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /\xF6\xEC\xD9\xB3\x67\xCF\x9E\x3D\x7B(\xF6\xEC\xD9\xB3\x67\xCF\x9E\x3D\x7B){500}/m
(assert (str.in.re X (re.++ (str.to.re "/\xf6\xec\xd9\xb3g\xcf\x9e={") ((_ re.loop 500 500) (str.to.re "\xf6\xec\xd9\xb3g\xcf\x9e={")) (str.to.re "/m\x0a"))))
; www\x2Eeblocs\x2Ecomcorep\x2Edmcast\x2Ecom
(assert (not (str.in.re X (str.to.re "www.eblocs.com\x1bcorep.dmcast.com\x0a"))))
; ^([\(]{1}[0-9]{3}[\)]{1}[ |\-]{0,1}|^[0-9]{3}[\-| ])?[0-9]{3}(\-| ){1}[0-9]{4}(([ ]{0,1})|([ ]{1}[0-9]{3,4}|))$
(assert (not (str.in.re X (re.++ (re.opt (re.union (re.++ ((_ re.loop 1 1) (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ")")) (re.opt (re.union (str.to.re " ") (str.to.re "|") (str.to.re "-")))) (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re "-") (str.to.re "|") (str.to.re " "))))) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.union (re.opt (str.to.re " ")) (re.++ ((_ re.loop 1 1) (str.to.re " ")) ((_ re.loop 3 4) (re.range "0" "9")))) (str.to.re "\x0a")))))
; Host\x3A\x2cSTATSTimeTotalpassword\x3B1\x3BOptix
(assert (not (str.in.re X (str.to.re "Host:,STATSTimeTotalpassword;1;Optix\x0a"))))
(check-sat)
