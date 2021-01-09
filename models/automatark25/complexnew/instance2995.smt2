(declare-const X String)
; User-Agent\x3A\s+User-Agent\x3AUser-Agent\x3A
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "User-Agent:User-Agent:\x0a"))))
; ^([1-9]([0-9])?)(\.(([0])?|([1-9])?|[1]([0-1])?)?)?$
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re ".") (re.opt (re.union (re.opt (str.to.re "0")) (re.opt (re.range "1" "9")) (re.++ (str.to.re "1") (re.opt (re.range "0" "1"))))))) (str.to.re "\x0a") (re.range "1" "9") (re.opt (re.range "0" "9")))))
; gpstool\x2eglobaladserver\x2ecomfriend_nickname=CIA-Notify-Tezt
(assert (str.in.re X (str.to.re "gpstool.globaladserver.comfriend_nickname=CIA-Notify-Tezt\x0a")))
; www\.thecommunicator\.net[^\n\r]*iufilfwulmfi\x2friuf\.lio
(assert (not (str.in.re X (re.++ (str.to.re "www.thecommunicator.net") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "iufilfwulmfi/riuf.lio\x0a")))))
; ^0$|^[1-9][0-9]*$|^[1-9][0-9]{0,2}(,[0-9]{3})$
(assert (not (str.in.re X (re.union (str.to.re "0") (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re "\x0a,") ((_ re.loop 3 3) (re.range "0" "9")))))))
(check-sat)
