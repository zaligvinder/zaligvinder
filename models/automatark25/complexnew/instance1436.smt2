(declare-const X String)
; \b([0]?[1-9]|[1,2]\d|3[0,1])[-/]([0]?[1-9]|[1][0,1,2])[-/](\d{1,2}|[1][9]\d\d|[2][0]\d\d)\b
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re ",") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re ",") (str.to.re "1")))) (re.union (str.to.re "-") (str.to.re "/")) (re.union (re.++ (re.opt (str.to.re "0")) (re.range "1" "9")) (re.++ (str.to.re "1") (re.union (str.to.re "0") (str.to.re ",") (str.to.re "1") (str.to.re "2")))) (re.union (str.to.re "-") (str.to.re "/")) (re.union ((_ re.loop 1 2) (re.range "0" "9")) (re.++ (str.to.re "19") (re.range "0" "9") (re.range "0" "9")) (re.++ (str.to.re "20") (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a")))))
; welcomeforToolbarHost\x3A
(assert (not (str.in.re X (str.to.re "welcomeforToolbarHost:\x0a"))))
; /filename=[^\n]*\x2eppt/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".ppt/i\x0a"))))
(check-sat)
