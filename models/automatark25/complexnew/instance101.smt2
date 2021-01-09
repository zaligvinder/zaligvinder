(declare-const X String)
; User-Agent\x3A\d+PortaURLSSKC\x7croogoo\x7c\.cfgmPOPrtCUSTOMPal
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "PortaURLSSKC|roogoo|.cfgmPOPrtCUSTOMPal\x0a")))))
; From\x3A\w+SoftActivity\d+
(assert (not (str.in.re X (re.++ (str.to.re "From:") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "SoftActivity\x13") (re.+ (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
