(declare-const X String)
; ^(\d{1,8}|(\d{0,8}\.{1}\d{1,2}){1})$
(assert (str.in.re X (re.++ (re.union ((_ re.loop 1 8) (re.range "0" "9")) ((_ re.loop 1 1) (re.++ ((_ re.loop 0 8) (re.range "0" "9")) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 2) (re.range "0" "9"))))) (str.to.re "\x0a"))))
; ovplSubject\x3ATencentTravelerClient\x7D\x7BSysuptime\x3A
(assert (str.in.re X (str.to.re "ovplSubject:TencentTravelerClient}{Sysuptime:\x0a")))
; We\d+pjpoptwql\x2frlnjX-Mailer\x3a
(assert (str.in.re X (re.++ (str.to.re "We") (re.+ (re.range "0" "9")) (str.to.re "pjpoptwql/rlnjX-Mailer:\x13\x0a"))))
(check-sat)
