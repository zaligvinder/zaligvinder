(declare-const X String)
; User-Agent\x3A\d+PortaURLSSKC\x7croogoo\x7c\.cfgmPOPrtCUSTOMPal
(assert (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "PortaURLSSKC|roogoo|.cfgmPOPrtCUSTOMPal\x0a"))))
; (^.+\|+[A-Za-z])
(assert (str.in.re X (re.++ (str.to.re "\x0a") (re.+ re.allchar) (re.+ (str.to.re "|")) (re.union (re.range "A" "Z") (re.range "a" "z")))))
; gpstool\x2eglobaladserver\x2ecom\daction\x2ESearchdata2\.activshopper\.com
(assert (not (str.in.re X (re.++ (str.to.re "gpstool.globaladserver.com") (re.range "0" "9") (str.to.re "action.Searchdata2.activshopper.com\x0a")))))
(check-sat)
