(declare-const X String)
; ^((([1]\d{2})|(22[0-3])|([1-9]\d)|(2[01]\d)|[1-9]).(([1]\d{2})|(2[0-4]\d)|(25[0-5])|([1-9]\d)|\d).(([1]\d{2})|(2[0-4]\d)|(25[0-5])|([1-9]\d)|\d).(([1]\d{2})|(2[0-4]\d)|(25[0-5])|([1-9]\d)|\d))$
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (re.++ (str.to.re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "22") (re.range "0" "3")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.++ (str.to.re "2") (re.union (str.to.re "0") (str.to.re "1")) (re.range "0" "9")) (re.range "1" "9")) re.allchar (re.union (re.++ (str.to.re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.range "0" "9")) re.allchar (re.union (re.++ (str.to.re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.range "0" "9")) re.allchar (re.union (re.++ (str.to.re "1") ((_ re.loop 2 2) (re.range "0" "9"))) (re.++ (str.to.re "2") (re.range "0" "4") (re.range "0" "9")) (re.++ (str.to.re "25") (re.range "0" "5")) (re.++ (re.range "1" "9") (re.range "0" "9")) (re.range "0" "9"))))))
; e2give\.comADRemoteHost\x3A
(assert (str.in.re X (str.to.re "e2give.comADRemoteHost:\x0a")))
; /filename=[^\n]*\x2ewmx/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".wmx/i\x0a"))))
; /^\/([a-zA-Z0-9-&+ ]+[^\/?]=){5}/Ui
(assert (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 5 5) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "&") (str.to.re "+") (str.to.re " "))) (re.union (str.to.re "/") (str.to.re "?")) (str.to.re "="))) (str.to.re "/Ui\x0a"))))
; DaysLOGHost\x3aHost\x3a\x7D\x7BOS\x3AHost\x3A
(assert (str.in.re X (str.to.re "DaysLOGHost:Host:}{OS:Host:\x0a")))
(check-sat)
