(declare-const X String)
; toolbar_domain_redirectriggiymd\x2fwdhi\.vhi
(assert (not (str.in.re X (str.to.re "toolbar_domain_redirectriggiymd/wdhi.vhi\x0a"))))
; User-Agent\x3A\d+PortaURLSSKC\x7croogoo\x7c\.cfgmPOPrtCUSTOMPal
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "PortaURLSSKC|roogoo|.cfgmPOPrtCUSTOMPal\x0a")))))
(check-sat)
