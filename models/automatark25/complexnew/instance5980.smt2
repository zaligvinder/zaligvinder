(declare-const X String)
; ^[-\w\s"'=/!@#%&,;:`~\.\$\^\{\[\(\|\)\]\}\*\+\?\\]*$
(assert (str.in.re X (re.++ (re.* (re.union (str.to.re "-") (str.to.re "\x22") (str.to.re "'") (str.to.re "=") (str.to.re "/") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "%") (str.to.re "&") (str.to.re ",") (str.to.re ";") (str.to.re ":") (str.to.re "`") (str.to.re "~") (str.to.re ".") (str.to.re "$") (str.to.re "^") (str.to.re "{") (str.to.re "[") (str.to.re "(") (str.to.re "|") (str.to.re ")") (str.to.re "]") (str.to.re "}") (str.to.re "*") (str.to.re "+") (str.to.re "?") (str.to.re "\x5c") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a"))))
; Host\x3A\s+A-311Servert=form-data\x3B\x20name=\x22pid\x22
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "A-311Servert=form-data; name=\x22pid\x22\x0a")))))
; <a\s*href=(.*?)[\s|>]
(assert (str.in.re X (re.++ (str.to.re "<a") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "href=") (re.* re.allchar) (re.union (str.to.re "|") (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "\x0a"))))
(check-sat)
