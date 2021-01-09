(declare-const X String)
; ^[a-zA-Z0-9]+([_.-]?[a-zA-Z0-9]+)?@[a-zA-Z0-9]+([_-]?[a-zA-Z0-9]+)*([.]{1})[a-zA-Z0-9]+([.]?[a-zA-Z0-9]+)*$
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.opt (re.++ (re.opt (re.union (str.to.re "_") (str.to.re ".") (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.opt (re.union (str.to.re "_") (str.to.re "-"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) ((_ re.loop 1 1) (str.to.re ".")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.* (re.++ (re.opt (str.to.re ".")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to.re "\x0a"))))
; \x22reaction\x2Etxt\x22.*Cookie\x3a[^\n\r]*richfind\x2EcomSimpsonFrom\x3A
(assert (str.in.re X (re.++ (str.to.re "\x22reaction.txt\x22") (re.* re.allchar) (str.to.re "Cookie:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "richfind.comSimpsonFrom:\x0a"))))
; ^\d{1,5}(\.\d{1,2})?$
(assert (not (str.in.re X (re.++ ((_ re.loop 1 5) (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; <h([1-6])>([^<]*)</h([1-6])>
(assert (str.in.re X (re.++ (str.to.re "<h") (re.range "1" "6") (str.to.re ">") (re.* (re.comp (str.to.re "<"))) (str.to.re "</h") (re.range "1" "6") (str.to.re ">\x0a"))))
(check-sat)
