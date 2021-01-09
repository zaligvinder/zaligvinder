(declare-const X String)
; /^\/[a-f0-9]{32}\.eot$/U
(assert (not (str.in.re X (re.++ (str.to.re "//") ((_ re.loop 32 32) (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re ".eot/U\x0a")))))
; www\x2Esearchreslt\x2Ecom
(assert (not (str.in.re X (str.to.re "www.searchreslt.com\x0a"))))
; www\x2Eezula\x2Ecom.*com[^\n\r]*SpyBuddy
(assert (not (str.in.re X (re.++ (str.to.re "www.ezula.com") (re.* re.allchar) (str.to.re "com") (re.* (re.union (str.to.re "\x0a") (str.to.re "\x0d"))) (str.to.re "SpyBuddy\x0a")))))
; ^(-?[1-9](\.\d+)?)((\s?[X*]\s?10[E^]([+-]?\d+))|(E([+-]?\d+)))$
(assert (not (str.in.re X (re.++ (re.union (re.++ (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.union (str.to.re "X") (str.to.re "*")) (re.opt (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "10") (re.union (str.to.re "E") (str.to.re "^")) (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9"))) (re.++ (str.to.re "E") (re.opt (re.union (str.to.re "+") (str.to.re "-"))) (re.+ (re.range "0" "9")))) (str.to.re "\x0a") (re.opt (str.to.re "-")) (re.range "1" "9") (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))))))
; /filename=[^\n]*\x2exsl/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".xsl/i\x0a")))))
(check-sat)
