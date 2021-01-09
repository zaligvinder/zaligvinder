(declare-const X String)
; ^([\+][0-9]{1,3}([ \.\-])?)?([\(]{1}[0-9]{3}[\)])?([0-9A-Z \.\-]{1,32})((x|ext|extension)?[0-9]{1,4}?)$
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "+") ((_ re.loop 1 3) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re ".") (str.to.re "-"))))) (re.opt (re.++ ((_ re.loop 1 1) (str.to.re "(")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ")"))) ((_ re.loop 1 32) (re.union (re.range "0" "9") (re.range "A" "Z") (str.to.re " ") (str.to.re ".") (str.to.re "-"))) (str.to.re "\x0a") (re.opt (re.union (str.to.re "x") (str.to.re "ext") (str.to.re "extension"))) ((_ re.loop 1 4) (re.range "0" "9")))))
; /filename=[^\n]*\x2etar/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".tar/i\x0a"))))
; ^(000-)(\\d{5}-){2}\\d{3}$
(assert (not (str.in.re X (re.++ (str.to.re "000-") ((_ re.loop 2 2) (re.++ (str.to.re "\x5c") ((_ re.loop 5 5) (str.to.re "d")) (str.to.re "-"))) (str.to.re "\x5c") ((_ re.loop 3 3) (str.to.re "d")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ejfi/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jfi/i\x0a"))))
; ^((\\{2}\w+)\$?)((\\{1}\w+)*$)
(assert (not (str.in.re X (re.++ (re.* (re.++ ((_ re.loop 1 1) (str.to.re "\x5c")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))))) (str.to.re "\x0a") (re.opt (str.to.re "$")) ((_ re.loop 2 2) (str.to.re "\x5c")) (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_")))))))
(check-sat)
