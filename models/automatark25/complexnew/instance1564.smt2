(declare-const X String)
; jar:file:/(([A-Z]:)?/([A-Z 0-9 * ( ) + \- & $ # @ _ . ! ~ /])+)(/[A-Z 0-9 _ ( ) \[ \] - = + _ ~]+\.jar!)
(assert (not (str.in.re X (re.++ (str.to.re "jar:file:/\x0a") (re.opt (re.++ (re.range "A" "Z") (str.to.re ":"))) (str.to.re "/") (re.+ (re.union (re.range "A" "Z") (str.to.re " ") (re.range "0" "9") (str.to.re "*") (str.to.re "(") (str.to.re ")") (str.to.re "+") (str.to.re "-") (str.to.re "&") (str.to.re "$") (str.to.re "#") (str.to.re "@") (str.to.re "_") (str.to.re ".") (str.to.re "!") (str.to.re "~") (str.to.re "/"))) (str.to.re "/") (re.+ (re.union (re.range "A" "Z") (str.to.re " ") (re.range "0" "9") (str.to.re "_") (str.to.re "(") (str.to.re ")") (str.to.re "[") (str.to.re "]") (re.range " " " ") (str.to.re "=") (str.to.re "+") (str.to.re "~"))) (str.to.re ".jar!")))))
; [^(\&)](\w*)+(\=)[\w\d ]*
(assert (str.in.re X (re.++ (re.union (str.to.re "(") (str.to.re "&") (str.to.re ")")) (re.+ (re.* (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))) (str.to.re "=") (re.* (re.union (re.range "0" "9") (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "\x0a"))))
; ^\$[+-]?([0-9]+|[0-9]{1,3}(,[0-9]{3})*)(\.[0-9]{1,2})?$
(assert (not (str.in.re X (re.++ (str.to.re "$") (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.union (re.+ (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; WinSession\w+asdbiz\x2Ebizfrom\x7croogoo\x7cCurrentiOpus
(assert (not (str.in.re X (re.++ (str.to.re "WinSession") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "asdbiz.bizfrom|roogoo|CurrentiOpus\x0a")))))
; Mirar_KeywordContent
(assert (not (str.in.re X (str.to.re "Mirar_KeywordContent\x13\x0a"))))
(check-sat)
