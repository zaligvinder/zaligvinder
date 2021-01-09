(declare-const X String)
; (\[b\])([^\[\]]+)(\[/b\])
(assert (not (str.in.re X (re.++ (str.to.re "[b]") (re.+ (re.union (str.to.re "[") (str.to.re "]"))) (str.to.re "[/b]\x0a")))))
; /filename=[^\n]*\x2esum/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sum/i\x0a")))))
; Host\x3A\d+Subject\x3A[^\n\r]*Seconds\-ovplHost\x3AHost\x3ADownload
(assert (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "Subject:") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "Seconds-ovplHost:Host:Download\x0a"))))
; ^([1-9]+)?[02468]$
(assert (not (str.in.re X (re.++ (re.opt (re.+ (re.range "1" "9"))) (re.union (str.to.re "0") (str.to.re "2") (str.to.re "4") (str.to.re "6") (str.to.re "8")) (str.to.re "\x0a")))))
; (([a-zA-Z0-9\-]*\.{1,}){1,}[a-zA-Z0-9]*)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.+ (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-"))) (re.+ (str.to.re ".")))) (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9")))))))
(check-sat)
