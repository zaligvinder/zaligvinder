(declare-const X String)
; ^([0-9a-fA-F]{4}|0)(\:([0-9a-fA-F]{4}|0)){7}$
(assert (not (str.in.re X (re.++ (re.union ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "0")) ((_ re.loop 7 7) (re.++ (str.to.re ":") (re.union ((_ re.loop 4 4) (re.union (re.range "0" "9") (re.range "a" "f") (re.range "A" "F"))) (str.to.re "0")))) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2etif/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".tif/i\x0a")))))
; ^[S-s]( |-)?[1-9]{1}[0-9]{2}( |-)?[0-9]{2}$
(assert (not (str.in.re X (re.++ (re.range "S" "s") (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 1 1) (re.range "1" "9")) ((_ re.loop 2 2) (re.range "0" "9")) (re.opt (re.union (str.to.re " ") (str.to.re "-"))) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; t=[^\n\r]*Host\x3A\s+Basicaohobygi\x2fzwiw
(assert (not (str.in.re X (re.++ (str.to.re "t=") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Basicaohobygi/zwiw\x0a")))))
(check-sat)
