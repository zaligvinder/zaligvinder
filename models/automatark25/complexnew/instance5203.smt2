(declare-const X String)
; ^((00|\+)49)?(0?[2-9][0-9]{1,})$
(assert (not (str.in.re X (re.++ (re.opt (re.++ (re.union (str.to.re "00") (str.to.re "+")) (str.to.re "49"))) (str.to.re "\x0a") (re.opt (str.to.re "0")) (re.range "2" "9") (re.+ (re.range "0" "9"))))))
; IP-[^\n\r]*URL\d\x7croogoo\x7c\.cfgmPOPrtCUSTOMPalToolbar
(assert (str.in.re X (re.++ (str.to.re "IP-") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "URL") (re.range "0" "9") (str.to.re "|roogoo|.cfgmPOPrtCUSTOMPalToolbar\x0a"))))
; \.txt$
(assert (str.in.re X (str.to.re ".txt\x0a")))
(check-sat)
