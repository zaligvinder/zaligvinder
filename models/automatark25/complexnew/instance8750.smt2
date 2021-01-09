(declare-const X String)
; /(^|&)destination_ip=[^&]*?(\x60|\x24\x28|%60|%24%28)/Pmi
(assert (not (str.in.re X (re.++ (str.to.re "/&destination_ip=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "`") (str.to.re "$(") (str.to.re "%60") (str.to.re "%24%28")) (str.to.re "/Pmi\x0a")))))
; ^-?([1]?[1-7][1-9]|[1]?[1-8][0]|[1-9]?[0-9])\.{1}\d{1,6}
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.opt (str.to.re "1")) (re.range "1" "7") (re.range "1" "9")) (re.++ (re.opt (str.to.re "1")) (re.range "1" "8") (str.to.re "0")) (re.++ (re.opt (re.range "1" "9")) (re.range "0" "9"))) ((_ re.loop 1 1) (str.to.re ".")) ((_ re.loop 1 6) (re.range "0" "9")) (str.to.re "\x0a")))))
(check-sat)
