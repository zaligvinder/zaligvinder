(declare-const X String)
; ^\d+\.\d\.\d[01]\d[0-3]\d\.[1-9]\d*$
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re ".") (re.range "0" "9") (str.to.re ".") (re.range "0" "9") (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9") (re.range "0" "3") (re.range "0" "9") (str.to.re ".") (re.range "1" "9") (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; ((mailto\:|(news|(ht|f)tp(s?))\://){1}\S+)
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 1) (re.union (str.to.re "mailto:") (re.++ (re.union (str.to.re "news") (re.++ (re.union (str.to.re "ht") (str.to.re "f")) (str.to.re "tp") (re.opt (str.to.re "s")))) (str.to.re "://")))) (re.+ (re.comp (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))))))
; User-Agent\x3AMailerGuarded
(assert (not (str.in.re X (str.to.re "User-Agent:MailerGuarded\x0a"))))
(check-sat)
