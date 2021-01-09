(declare-const X String)
; /filename=\x22\d+\x22\r\n/P
(assert (not (str.in.re X (re.++ (str.to.re "/filename=\x22") (re.+ (re.range "0" "9")) (str.to.re "\x22\x0d\x0a/P\x0a")))))
; ^\d+(\.\d{2})?$
(assert (not (str.in.re X (re.++ (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") ((_ re.loop 2 2) (re.range "0" "9")))) (str.to.re "\x0a")))))
; ((0[1-9])|(1[0-2]))\/(([0-9])|([0-2][0-9])|(3[0-1]))/\d{2}
(assert (not (str.in.re X (re.++ (re.union (re.++ (str.to.re "0") (re.range "1" "9")) (re.++ (str.to.re "1") (re.range "0" "2"))) (str.to.re "/") (re.union (re.range "0" "9") (re.++ (re.range "0" "2") (re.range "0" "9")) (re.++ (str.to.re "3") (re.range "0" "1"))) (str.to.re "/") ((_ re.loop 2 2) (re.range "0" "9")) (str.to.re "\x0a")))))
; /^([a-zA-Z0-9\.\_\-\&]+)@[a-zA-Z0-9]+\.[a-zA-Z]{3}|(.[a-zA-Z]{2}(\.[a-zA-Z]{2}))$/
(assert (str.in.re X (re.union (re.++ (str.to.re "/") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re ".") (str.to.re "_") (str.to.re "-") (str.to.re "&"))) (str.to.re "@") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re ".") ((_ re.loop 3 3) (re.union (re.range "a" "z") (re.range "A" "Z")))) (re.++ (str.to.re "/\x0a") re.allchar ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z"))) (str.to.re ".") ((_ re.loop 2 2) (re.union (re.range "a" "z") (re.range "A" "Z")))))))
; HWAE.*wowokay\s%3fsearchresltX-Mailer\x3AisSubject\x3a
(assert (str.in.re X (re.++ (str.to.re "HWAE") (re.* re.allchar) (str.to.re "wowokay") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "%3fsearchresltX-Mailer:\x13isSubject:\x0a"))))
(check-sat)
