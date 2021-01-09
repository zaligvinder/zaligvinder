(declare-const X String)
; /filename=[^\n]*\x2edocm/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".docm/i\x0a"))))
; ^([a-zA-Z0-9\-]{2,80})$
(assert (str.in.re X (re.++ ((_ re.loop 2 80) (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (str.to.re "\x0a"))))
; ^(sip|sips):.*\@((\d{1,3}.\d{1,3}.\d{1,3}.\d{1,3})|([a-zA-Z\-\.]+\.[a-zA-Z]{2,5}))(:[\d]{1,5})?([\w\-?\@?\;?\,?\=\%\&]+)?
(assert (not (str.in.re X (re.++ (str.to.re "sips:") (re.* re.allchar) (str.to.re "@") (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) re.allchar ((_ re.loop 1 3) (re.range "0" "9")) re.allchar ((_ re.loop 1 3) (re.range "0" "9")) re.allchar ((_ re.loop 1 3) (re.range "0" "9"))) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "-") (str.to.re "."))) (str.to.re ".") ((_ re.loop 2 5) (re.union (re.range "a" "z") (re.range "A" "Z"))))) (re.opt (re.++ (str.to.re ":") ((_ re.loop 1 5) (re.range "0" "9")))) (re.opt (re.+ (re.union (str.to.re "-") (str.to.re "?") (str.to.re "@") (str.to.re ";") (str.to.re ",") (str.to.re "=") (str.to.re "%") (str.to.re "&") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (str.to.re "\x0a")))))
(check-sat)
