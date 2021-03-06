(declare-const X String)
; User-Agent\x3AMailerGuarded
(assert (not (str.in.re X (str.to.re "User-Agent:MailerGuarded\x0a"))))
; (^(\+?\-? *[0-9]+)([,0-9 ]*)([0-9 ])*$)|(^ *$)
(assert (not (str.in.re X (re.union (re.++ (re.* (re.union (str.to.re ",") (re.range "0" "9") (str.to.re " "))) (re.* (re.union (re.range "0" "9") (str.to.re " "))) (re.opt (str.to.re "+")) (re.opt (str.to.re "-")) (re.* (str.to.re " ")) (re.+ (re.range "0" "9"))) (re.++ (re.* (str.to.re " ")) (str.to.re "\x0a"))))))
; ^(19|20)[0-9]{2}-((01|03|05|07|08|10|12)-(0[1-9]|[12][0-9]|3[01]))|(02-(0[1-9]|[12][0-9]))|((04|06|09|11)-(0[1-9]|[12][0-9]|30))$
(assert (not (str.in.re X (re.union (re.++ (re.union (str.to.re "19") (str.to.re "20")) ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "-") (re.union (str.to.re "01") (str.to.re "03") (str.to.re "05") (str.to.re "07") (str.to.re "08") (str.to.re "10") (str.to.re "12")) (str.to.re "-") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (re.++ (str.to.re "3") (re.union (str.to.re "0") (str.to.re "1"))))) (re.++ (str.to.re "02-") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")))) (re.++ (str.to.re "\x0a") (re.union (str.to.re "04") (str.to.re "06") (str.to.re "09") (str.to.re "11")) (str.to.re "-") (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (re.union (str.to.re "1") (str.to.re "2")) (re.range "0" "9")) (str.to.re "30")))))))
(check-sat)
