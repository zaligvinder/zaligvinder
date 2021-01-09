(declare-const X String)
; ^\d*[0-9](\.\d?[0-9])?$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.range "0" "9") (re.opt (re.++ (str.to.re ".") (re.opt (re.range "0" "9")) (re.range "0" "9"))) (str.to.re "\x0a"))))
; ^(966)(5)[0-9]{8}$
(assert (str.in.re X (re.++ (str.to.re "9665") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a"))))
; ^(\{1}[2-9]{1}[0-9]{2}\){1}[ ]?[2-9]{1}[0-9]{2}(-| )?[0-9]{4}|[2-9]{1}[0-9]{2}[ ]{1}[2-9]{1}[0-9]{2}[ ]{1}[0-9]{4}|[2-9]{1}[0-9]{2}[2-9]{1}[0-9]{6}|[2-9]{1}[0-9]{2}-{1}[2-9]{1}[0-9]{2}-{1}[0-9]{4}){1}$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.++ (str.to.re "{1}") ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ")")) (re.opt (str.to.re " ")) ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re " ")) ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re " ")) ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 6 6) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re "-")) ((_ re.loop 1 1) (re.range "2" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re "-")) ((_ re.loop 4 4) (re.range "0" "9"))))) (str.to.re "\x0a")))))
; ^<a[^>]*(http://[^"]*)[^>]*>([ 0-9a-zA-Z]+)</a>$
(assert (str.in.re X (re.++ (str.to.re "<a") (re.* (re.comp (str.to.re ">"))) (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.+ (re.union (str.to.re " ") (re.range "0" "9") (re.range "a" "z") (re.range "A" "Z"))) (str.to.re "</a>\x0ahttp://") (re.* (re.comp (str.to.re "\x22"))))))
(check-sat)
