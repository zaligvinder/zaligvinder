(declare-const X String)
; toolbar_domain_redirectriggiymd\u{2f}wdhi\.vhi
(assert (not (str.in_re X (str.to_re "toolbar_domain_redirectriggiymd/wdhi.vhi\u{a}"))))
; User-Agent\u{3A}\d+PortaURLSSKC\u{7c}roogoo\u{7c}\.cfgmPOPrtCUSTOMPal
(assert (not (str.in_re X (re.++ (str.to_re "User-Agent:") (re.+ (re.range "0" "9")) (str.to_re "PortaURLSSKC|roogoo|.cfgmPOPrtCUSTOMPal\u{a}")))))
(check-sat)
