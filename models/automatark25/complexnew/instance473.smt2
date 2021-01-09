(declare-const X String)
; /\/blog\/images\/3521\.jpg\?v\d{2}=\d{2}\x26tq=/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//blog/images/3521.jpg?v") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "=") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "&tq=/Ui\x0a")))))
; ^[A][Z](.?)[0-9]{4}$
(assert (not (str.in.re X (re.++ (str.to.re "AZ") (re.opt re.allchar) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; ^\$[+-]?([0-9]+|[0-9]{1,3}(,[0-9]{3})*)(\.[0-9]{1,2})?$
(assert (not (str.in.re X (re.++ (str.to.re "$") (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.union (re.+ (re.range "0" "9")) (re.++ ((_ re.loop 1 3) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ^\+\d{1,3}\s\d{3}\s\d{3}\s\d{4}
(assert (not (str.in.re X (re.++ (str.to.re "+") ((_ re.loop 1 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 3 3) (re.range "0" "9")) (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; /filename=[^\n]*\x2ejif/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".jif/i\x0a")))))
(check-sat)
