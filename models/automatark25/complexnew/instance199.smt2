(declare-const X String)
; ^[a-zA-Z_]{1}[a-zA-Z0-9_@$#]*$
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (re.union (re.range "a" "z") (re.range "A" "Z") (str.to.re "_"))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_") (str.to.re "@") (str.to.re "$") (str.to.re "#"))) (str.to.re "\x0a"))))
; ^(19|20)[0-9]{2}-((01|03|05|07|08|10|12)-(0[1-9]|[12][0-9]|3[01]))|(02-(0[1-9]|[12][0-9]))|((04|06|09|11)-(0[1-9]|[12][0-9]|30))$
(assert (not (str.in.re X (re.union (re.++ (re.union (str.to.re "19") (str.to.re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") (re.union (str.to.re "01") (str.to.re "03") (str.to.re "05") (str.to.re "07") (str.to.re "08") (str.to.re "10") (str.to.re "12")) (str.to.re "-") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))))) (re.++ (str.to.re "02-") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) (re.++ (str.to.re "\x0a") (re.union (str.to.re "04") (str.to.re "06") (str.to.re "09") (str.to.re "11")) (str.to.re "-") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (str.to.re "30")))))))
; /\x2edae([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.dae") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
