(declare-const X String)
; ^\$?(\d{1,3}(\,\d{3})*|(\d+))(\.\d{0,2})?$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "$")) (re.union (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9"))))) (re.+ (re.range "0" "9"))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 0 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^\d+([.,]?\d+)?$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (re.opt (re.union (str.to.re ".") (str.to.re ","))) (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; /Host\x3a[^\n]+\x3a\d+\x0d\x0a/
(assert (not (str.in.re X (re.++ (str.to.re "/Host:") (re.+ (re.comp (str.to.re "\x0a"))) (str.to.re ":") (re.+ (re.range "0" "9")) (str.to.re "\x0d\x0a/\x0a")))))
; /filename=[^\n]*\x2ejpg/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jpg/i\x0a"))))
(check-sat)
