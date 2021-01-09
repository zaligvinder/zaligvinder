(declare-const X String)
; ^(\$\ |\$)?((0|00|[1-9]\d*|([1-9]\d{0,2}(\,\d{3})*))(\.\d{1,4})?|(\.\d{1,4}))$
(assert (str.in.re X (re.++ (re.opt (str.to.re "$ ")) (re.union (re.++ (re.union (str.to.re "0") (str.to.re "00") (re.++ (re.range "1" "9") (re.* (re.range "0" "9"))) (re.++ (re.range "1" "9") ((_ re.loop 0 2) (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))))) (re.opt (re.++ (str.to.re ".") ((_ re.loop 1 4) (re.range "0" "9"))))) (re.++ (str.to.re ".") ((_ re.loop 1 4) (re.range "0" "9")))) (str.to.re "\x0a"))))
; media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAHHost\x3AProAgentIDENTIFY
(assert (not (str.in.re X (str.to.re "media.dxcdirect.com.smx?PASSW=SAHHost:ProAgentIDENTIFY\x0a"))))
(check-sat)
