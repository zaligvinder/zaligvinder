(declare-const X String)
; fromMinixmlldap\x3A\x2F\x2F\x2Fbonzibuddy\x2Ftoolbar_domain_redirectUser-Agent\x3A
(assert (not (str.in.re X (str.to.re "fromMinixmlldap:///bonzibuddy/toolbar_domain_redirectUser-Agent:\x0a"))))
; Host\x3A\x2cSTATSTimeTotalpassword\x3B1\x3BOptix
(assert (not (str.in.re X (str.to.re "Host:,STATSTimeTotalpassword;1;Optix\x0a"))))
; Host\x3APortawww\.thecommunicator\.net
(assert (not (str.in.re X (str.to.re "Host:Portawww.thecommunicator.net\x0a"))))
; User-Agent\x3A\d+Desktop\sIDENTIFY666User-Agent\x3A\x5BStatic
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "Desktop") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "IDENTIFY666User-Agent:[Static\x0a"))))
; ^[0-9]{0,5}[ ]{0,1}[0-9]{0,6}$
(assert (not (str.in.re X (re.++ ((_ re.loop 0 5) (re.range "0" "9")) (re.opt (str.to.re " ")) ((_ re.loop 0 6) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
