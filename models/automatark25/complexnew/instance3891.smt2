(declare-const X String)
; (0|(\+)?([1-9]{1}[0-9]{0,1}|[1]{1}[0-9]{0,2}|[2]{1}([0-4]{1}[0-9]{1}|[5]{1}[0-5]{1})))
(assert (not (str.in.re X (re.++ (re.union (str.to.re "0") (re.++ (re.opt (str.to.re "+")) (re.union (re.++ ((_ re.loop 1 1) (re.range "1" "9")) (re.opt (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "1")) ((_ re.loop 0 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "2")) (re.union (re.++ ((_ re.loop 1 1) (re.range "0" "4")) ((_ re.loop 1 1) (re.range "0" "9"))) (re.++ ((_ re.loop 1 1) (str.to.re "5")) ((_ re.loop 1 1) (re.range "0" "5")))))))) (str.to.re "\x0a")))))
; IP-[^\n\r]*URL\d\x7croogoo\x7c\.cfgmPOPrtCUSTOMPalToolbar
(assert (not (str.in.re X (re.++ (str.to.re "IP-") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "URL") (re.range "0" "9") (str.to.re "|roogoo|.cfgmPOPrtCUSTOMPalToolbar\x0a")))))
(check-sat)
