(declare-const X String)
; Port.*Pro.*www\x2eproventactics\x2ecomwv=update\.cgidrivesDays
(assert (not (str.in.re X (re.++ (str.to.re "Port") (re.* re.allchar) (str.to.re "Pro") (re.* re.allchar) (str.to.re "www.proventactics.comwv=update.cgidrivesDays\x0a")))))
; ^(^(100{1,1}$)|^(100{1,1}\.[0]+?$))|(^([0]*\d{0,2}$)|^([0]*\d{0,2}\.(([0][1-9]{1,1}[0]*)|([1-9]{1,1}[0]*)|([0]*)|([1-9]{1,2}[0]*)))$)$
(assert (str.in.re X (re.union (re.++ (re.union (re.++ (re.* (str.to.re "0")) ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ (re.* (str.to.re "0")) ((_ re.loop 0 2) (re.range "0" "9")) (str.to.re ".") (re.union (re.++ (str.to.re "0") ((_ re.loop 1 1) (re.range "1" "9")) (re.* (str.to.re "0"))) (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.* (str.to.re "0"))) (re.* (str.to.re "0")) (re.++ ((_ re.loop 1 2) (re.range "1" "9")) (re.* (str.to.re "0")))))) (str.to.re "\x0a")) (re.++ (str.to.re "10") ((_ re.loop 1 1) (str.to.re "0"))) (re.++ (str.to.re "10") ((_ re.loop 1 1) (str.to.re "0")) (str.to.re ".") (re.+ (str.to.re "0"))))))
; /filename=[^\n]*\x2etif/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".tif/i\x0a"))))
(check-sat)
