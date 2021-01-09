(declare-const X String)
; /filename=[^\n]*\x2etif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".tif/i\x0a"))))
; /\x3Fp\x3D[0-9]{1,10}\x26d\x3D/U
(assert (not (str.in.re X (re.++ (str.to.re "/?p=") ((_ re.loop 1 10) (re.range "0" "9")) (str.to.re "&d=/U\x0a")))))
; ^([0-9]{1}[\d]{0,2}(\,[\d]{3})*(\,[\d]{0,2})?|[0-9]{1}[\d]{0,}(\,[\d]{0,2})?|0(\,[\d]{0,2})?|(\,[\d]{1,2})?)$
(assert (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "9")) ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to.re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ ((_ re.loop 1 1) (re.range "0" "9")) (re.* (re.range "0" "9")) (re.opt (re.++ (str.to.re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.++ (str.to.re "0") (re.opt (re.++ (str.to.re ",") ((_ re.loop 0 2) (re.range "0" "9"))))) (re.opt (re.++ (str.to.re ",") ((_ re.loop 1 2) (re.range "0" "9"))))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2esmil/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".smil/i\x0a")))))
(check-sat)
