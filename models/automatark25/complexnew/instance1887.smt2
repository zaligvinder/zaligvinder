(declare-const X String)
; ^(\+86)(13[0-9]|145|147|15[0-3,5-9]|18[0,2,5-9])(\d{8})$
(assert (str.in.re X (re.++ (str.to.re "+86") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "\x0a1") (re.union (re.++ (str.to.re "3") (re.range "0" "9")) (str.to.re "45") (str.to.re "47") (re.++ (str.to.re "5") (re.union (re.range "0" "3") (str.to.re ",") (re.range "5" "9"))) (re.++ (str.to.re "8") (re.union (str.to.re "0") (str.to.re ",") (str.to.re "2") (re.range "5" "9")))))))
; /setInterval\s*\x28[^\x29]+\x2efocus\x28\x29/smi
(assert (str.in.re X (re.++ (str.to.re "/setInterval") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.+ (re.comp (str.to.re ")"))) (str.to.re ".focus()/smi\x0a"))))
(check-sat)
