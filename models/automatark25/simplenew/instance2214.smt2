(declare-const X String)
; <select(.|\n)*?selected(.|\n)*?>(.*?)</option>(.|\n)*?</select>
(assert (not (str.in.re X (re.++ (str.to.re "<select") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "selected") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re ">") (re.* re.allchar) (str.to.re "</option>") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "</select>\x0a")))))
(check-sat)
