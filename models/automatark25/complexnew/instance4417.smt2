(declare-const X String)
; <select(.|\n)*?selected(.|\n)*?>(.*?)</option>(.|\n)*?</select>
(assert (str.in.re X (re.++ (str.to.re "<select") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "selected") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re ">") (re.* re.allchar) (str.to.re "</option>") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "</select>\x0a"))))
; ^(([A-Z]{1,2}[0-9]{1,2})|([A-Z]{1,2}[0-9][A-Z]))\s?([0-9][A-Z]{2})$
(assert (not (str.in.re X (re.++ (re.union (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) ((_ re.loop 1 2) (re.range "0" "9"))) (re.++ ((_ re.loop 1 2) (re.range "A" "Z")) (re.range "0" "9") (re.range "A" "Z"))) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a") (re.range "0" "9") ((_ re.loop 2 2) (re.range "A" "Z"))))))
(check-sat)
