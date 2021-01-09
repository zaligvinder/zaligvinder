(declare-const X String)
; ^([1-9]{1}[\d]{0,2}(\.[\d]{3})*(\,[\d]{0,2})?|[1-9]{1}[\d]{0,}(\,[\d]{0,2})?|0(\,[\d]{0,2})?|(\,[\d]{1,2})?)$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to.re ".") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to.re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (str.to.re "0") (re.opt (re.++ (str.to.re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.opt (re.++ (str.to.re ",") ((_ re.loop 1 2) (re.range "0" "9"))))) (str.to.re "\x0a"))))
; /^\x2f[0-9a-f]+$/iU
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "/iU\x0a"))))
; /\?spl=\d&br=[^&]+&vers=[^&]+&s=/H
(assert (str.in.re X (re.++ (str.to.re "/?spl=") (re.range "0" "9") (str.to.re "&br=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&vers=") (re.+ (re.comp (str.to.re "&"))) (str.to.re "&s=/H\x0a"))))
; ^((0?[1-9]|1[012])(:[0-5]\d){1,2}(\ [AaPp][Mm]))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "2")))) ((_ re.loop 1 2) (re.++ (str.to.re ":") (re.range "0" "5") (re.range "0" "9"))) (str.to.re " ") (re.union (str.to.re "A") (str.to.re "a") (str.to.re "P") (str.to.re "p")) (re.union (str.to.re "M") (str.to.re "m"))))))
(check-sat)
