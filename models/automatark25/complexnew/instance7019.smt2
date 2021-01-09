(declare-const X String)
; /domain=[^&]*?([\x3b\x60]|\x24\x28|%3b|%60|%24%28)/Pi
(assert (not (str.in.re X (re.++ (str.to.re "/domain=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "$(") (str.to.re "%3b") (str.to.re "%60") (str.to.re "%24%28") (str.to.re ";") (str.to.re "`")) (str.to.re "/Pi\x0a")))))
; User-Agent\x3aHost\x3AHost\x3ASpyBuddy
(assert (str.in.re X (str.to.re "User-Agent:Host:Host:SpyBuddy\x0a")))
; <select(.|\n)*?selected(.|\n)*?>(.*?)</option>(.|\n)*?</select>
(assert (str.in.re X (re.++ (str.to.re "<select") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "selected") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re ">") (re.* re.allchar) (str.to.re "</option>") (re.* (re.union re.allchar (str.to.re "\x0a"))) (str.to.re "</select>\x0a"))))
(check-sat)
