(declare-const X String)
; ^(([1-9])|(0[1-9])|(1[0-2]))\/(([0-9])|([0-2][0-9])|(3[0-1]))\/(([0-9][0-9])|([1-2][0,9][0-9][0-9]))$
(assert (str.in.re X (re.++ (re.union (re.range "1" "9") (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.range "0" "9") (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/") (re.union (re.++ (re.range "0" "9") (re.range "0" "9")) (re.++ (re.range "1" "2") (re.union (str.to.re "0") (str.to.re ",") (str.to.re "9")) (re.range "0" "9") (re.range "0" "9"))) (str.to.re "\x0a"))))
; /\x2epmd([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.pmd") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; /filename=[a-z0-9]+\x0d\x0a/H
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.+ (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0d\x0a/H\x0a")))))
; Activityfilename=\x22StarLoggerDAWeb-Mail
(assert (str.in.re X (str.to.re "Activityfilename=\x22StarLoggerDAWeb-Mail\x0a")))
(check-sat)
