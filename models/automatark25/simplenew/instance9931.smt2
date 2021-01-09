(declare-const X String)
; /\/MacApp\/\d{2}(-\d{2}){3}(:\d{2}){2}\.png\r\n[^\x89]+?\x89PNG/Psmi
(assert (not (str.in.re X (re.++ (str.to.re "//MacApp/") ((_ re.loop 2 2) (re.range "0" "9")) ((_ re.loop 3 3) (re.++ (str.to.re "-") ((_ re.loop 2 2) (re.range "0" "9")))) ((_ re.loop 2 2) (re.++ (str.to.re ":") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re ".png\x0d\x0a") (re.+ (re.comp (str.to.re "\x89"))) (str.to.re "\x89PNG/Psmi\x0a")))))
(check-sat)
