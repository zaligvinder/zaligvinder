(declare-const X String)
; PASSW=\s+\x2Fta\x2FNEWS\x2F.*loomcompany\x2Ecom
(assert (str.in.re X (re.++ (str.to.re "PASSW=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "/ta/NEWS/") (re.* re.allchar) (str.to.re "loomcompany.com\x0a"))))
; ^(3(([0-5][0-9]{0,2})|60))|([1-2][0-9]{2})|(^[1-9]$)|(^[1-9]{2}$)$
(assert (not (str.in.re X (re.union (re.++ (str.to.re "3") (re.union (re.++ (re.range "0" "5") ((_ re.loop 0 2) (re.range "0" "9"))) (str.to.re "60"))) (re.++ (re.range "1" "2") ((_ re.loop 2 2) (re.range "0" "9"))) (re.range "1" "9") (re.++ ((_ re.loop 2 2) (re.range "1" "9")) (str.to.re "\x0a"))))))
(check-sat)
