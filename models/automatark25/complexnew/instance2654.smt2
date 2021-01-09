(declare-const X String)
; ^[0-9]%?$|^1[0-9]%?$|^2[0-9]%?$|^3[0-5]%?$|^[0-9]\.\d{1,2}%?$|^1[0-9]\.\d{1,2}%?$|^2[0-9]\.\d{1,2}%?$|^3[0-4]\.\d{1,2}%?$|^35%?$
(assert (str.in.re X (re.union (re.++ (re.range "0" "9") (re.opt (str.to.re "%"))) (re.++ (str.to.re "1") (re.range "0" "9") (re.opt (str.to.re "%"))) (re.++ (str.to.re "2") (re.range "0" "9") (re.opt (str.to.re "%"))) (re.++ (str.to.re "3") (re.range "0" "5") (re.opt (str.to.re "%"))) (re.++ (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "1") (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "2") (re.range "0" "9") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "3") (re.range "0" "4") (str.to.re ".") ((_ re.loop 1 2) (re.range "0" "9")) (re.opt (str.to.re "%"))) (re.++ (str.to.re "35") (re.opt (str.to.re "%")) (str.to.re "\x0a")))))
; Referer\x3A.*User-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "Referer:") (re.* re.allchar) (str.to.re "User-Agent:\x0a")))))
(check-sat)
