(declare-const X String)
; ^(958([0-9])+([0-9])+([0-9])+([0-9])+([0-9])+([0-9])+)|(958-([0-9])+([0-9])+([0-9])+([0-9])+([0-9])+([0-9])+)$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "958") (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9"))) (re.++ (str.to.re "\x0a958-") (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")) (re.+ (re.range "0" "9")))))))
; ^[a-z0-9][a-z0-9_\.-]{0,}[a-z0-9]@[a-z0-9][a-z0-9_\.-]{0,}[a-z0-9][\.][a-z0-9]{2,4}$
(assert (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re ".") (str.to.re "-"))) (re.union (re.range "a" "z") (re.range "0" "9")) (str.to.re "@") (re.union (re.range "a" "z") (re.range "0" "9")) (re.* (re.union (re.range "a" "z") (re.range "0" "9") (str.to.re "_") (str.to.re ".") (str.to.re "-"))) (re.union (re.range "a" "z") (re.range "0" "9")) (str.to.re ".") ((_ re.loop 2 4) (re.union (re.range "a" "z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; /\.php\?action=jv\&h=\d+/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/.php?action=jv&h=") (re.+ (re.range "0" "9")) (str.to.re "/Ui\x0a")))))
; (W(5|6)[D]?\-\d{9})|(W1\-\d{9}(\-\d{2})?)
(assert (not (str.in.re X (re.union (re.++ (str.to.re "W") (re.union (str.to.re "5") (str.to.re "6")) (re.opt (str.to.re "D")) (str.to.re "-") ((_ re.loop 9 9) (re.range "0" "9"))) (re.++ (str.to.re "\x0aW1-") ((_ re.loop 9 9) (re.range "0" "9")) (re.opt (re.++ (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")))))))))
; downloadfile\x2eorg\w+com\x3EHost\x3A
(assert (not (str.in.re X (re.++ (str.to.re "downloadfile.org") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "com>Host:\x0a")))))
(check-sat)
