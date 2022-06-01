(declare-const X String)
; <select(.|\n)*?selected(.|\n)*?>(.*?)</option>(.|\n)*?</select>
(assert (not (str.in_re X (re.++ (str.to_re "<select") (re.* (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re "selected") (re.* (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re ">") (re.* re.allchar) (str.to_re "</option>") (re.* (re.union re.allchar (str.to_re "\u{a}"))) (str.to_re "</select>\u{a}")))))
(check-sat)
