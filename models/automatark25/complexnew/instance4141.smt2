(declare-const X String)
; ^[-+]?\d+(\.\d)?\d*$
(assert (not (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")) (re.opt (re.++ (str.to.re ".") (re.range "0" "9"))) (re.* (re.range "0" "9")) (str.to.re "\x0a")))))
; /^\/([a-zA-Z0-9-&+ ]+[^\/?]=){5}/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 5 5) (re.++ (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "-") (str.to.re "&") (str.to.re "+") (str.to.re " "))) (re.union (str.to.re "/") (str.to.re "?")) (str.to.re "="))) (str.to.re "/Ui\x0a")))))
; loomcompany\x2EcomBasedURLS\swww\.fast-finder\.com
(assert (str.in.re X (re.++ (str.to.re "loomcompany.comBasedURLS") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "www.fast-finder.com\x0a"))))
; /^User-Agent\x3A[^\r\n]*malware/miH
(assert (not (str.in.re X (re.++ (str.to.re "/User-Agent:") (re.* (re.union (str.to.re "\x0d") (str.to.re "\x0a"))) (str.to.re "malware/miH\x0a")))))
(check-sat)
