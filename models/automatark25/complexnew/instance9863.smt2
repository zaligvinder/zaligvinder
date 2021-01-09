(declare-const X String)
; User-Agent\x3A\d+PortaURLSSKC\x7croogoo\x7c\.cfgmPOPrtCUSTOMPal
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "PortaURLSSKC|roogoo|.cfgmPOPrtCUSTOMPal\x0a"))))
; /\/jlnp\.html$/U
(assert (not (str.in.re X (str.to.re "//jlnp.html/U\x0a"))))
; Server\s+www\x2Epeer2mail\x2Ecom.*Subject\x3AReferer\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Server") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.peer2mail.com") (re.* re.allchar) (str.to.re "Subject:Referer:\x0a")))))
; replace(MobileNo,' ',''),'^(\+44|0044|0)(7)[4-9][0-9]{8}$'
(assert (str.in.re X (re.++ (str.to.re "replaceMobileNo,' ','','") (re.union (str.to.re "+44") (str.to.re "0044") (str.to.re "0")) (str.to.re "7") (re.range "4" "9") ((_ re.loop 8 8) (re.range "0" "9")) (str.to.re "'\x0a"))))
(check-sat)
