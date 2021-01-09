(declare-const X String)
; /^Subject\x3A[^\r\n]*Trojaner-Info\sNewsletter/smi
(assert (str.in.re X (re.++ (str.to.re "/Subject:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "Trojaner-Info") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Newsletter/smi\x0a"))))
; ^(http(s?)\:\/\/)*[0-9a-zA-Z]([-.\w]*[0-9a-zA-Z])*(:(0-9)*)*(\/?)([a-zA-Z0-9\-\.\?\,\'\/\\\+&%\$#_]*)?$
(assert (not (str.in.re X (re.++ (re.* (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://"))) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")) (re.* (re.++ (re.* (re.union (str.to.re "-") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (re.union (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z")))) (re.* (re.++ (str.to.re ":") (re.* (str.to.re "0-9")))) (re.opt (str.to.re "/")) (re.opt (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re ".") (str.to.re "?") (str.to.re ",") (str.to.re "'") (str.to.re "/") (str.to.re "\x5c") (str.to.re "+") (str.to.re "&") (str.to.re "%") (str.to.re "$") (str.to.re "#") (str.to.re "_")))) (str.to.re "\x0a")))))
; ^(\(?[0-9]{3}[\)-\.]?\ ?)?[0-9]{3}[-\.]?[0-9]{4}$
(assert (str.in.re X (re.++ (re.opt (re.++ (re.opt (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.range ")" ".")) (re.opt (str.to.re " ")))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re "."))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^\-?[0-9]{1,3}(\,[0-9]{3})*(\.[0-9]+)?$|^[0-9]+(\.[0-9]+)?$
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))))
; Computer\x7D\x7BSysuptime\x3Awww\x2Eezula\x2EcomanswerServerHost\x3Aserveradfsgecoiwnf
(assert (not (str.in.re X (str.to.re "Computer}{Sysuptime:www.ezula.comanswerServerHost:serveradfsgecoiwnf\x1b\x0a"))))
(check-sat)
