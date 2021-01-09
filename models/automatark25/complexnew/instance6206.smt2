(declare-const X String)
; /filename=[^\n]*\x2esami/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".sami/i\x0a"))))
; /User\x2dAgent\x3a\x20[A-F\d]{32}\r\n/H
(assert (str.in.re X (re.++ (str.to.re "/User-Agent: ") ((_ re.loop 32 32) (re.union (re.range "A" "F") (re.range "0" "9"))) (str.to.re "\x0d\x0a/H\x0a"))))
; Dripline\d+X-Mailer\x3a\x04\x00TCP
(assert (not (str.in.re X (re.++ (str.to.re "Dripline") (re.+ (re.range "0" "9")) (str.to.re "X-Mailer:\x13\x04\x00TCP\x0a")))))
; dll\x3F\[DRIVEHost\x3A\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1
(assert (not (str.in.re X (str.to.re "dll?[DRIVEHost:\xb0\xae\xb6\xf9\xcd\xf8\xb5\xc1\x0a"))))
(check-sat)
