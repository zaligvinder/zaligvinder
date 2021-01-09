(declare-const X String)
; /filename=[^\n]*\x2exm/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xm/i\x0a")))))
; ^(\d{3}-\d{2}-\d{4})|(\d{3}\d{2}\d{4})$
(assert (str.in.re X (re.union (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") ((_ re.loop 4 4) (re.range "0" "9"))) (re.++ (str.to.re "\x0a") ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 4 4) (re.range "0" "9"))))))
; ^\[assembly: AssemblyVersion\(\"([0-9]+)\.([0-9]+)\.([0-9]+)\.([0-9]+)
(assert (not (str.in.re X (re.++ (str.to.re "[assembly: AssemblyVersion(\x22") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
; ((8|\+7)-?)?\(?\d{3,5}\)?-?\d{1}-?\d{1}-?\d{1}-?\d{1}-?\d{1}((-?\d{1})?-?\d{1})?
(assert (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "8") (str.to.re "+7")) (re.opt (str.to.re "-")))) (re.opt (str.to.re "(")) ((_ re.loop 3 5) (re.range "0" "9")) (re.opt (str.to.re ")")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")) (re.opt (re.++ (re.opt (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")))) (re.opt (str.to.re "-")) ((_ re.loop 1 1) (re.range "0" "9")))) (str.to.re "\x0a"))))
(check-sat)
