(declare-const X String)
; ^-?\d{1,3}\.(\d{3}\.)*\d{3},\d\d$|^-?\d{1,3},\d\d$
(assert (not (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ".") (re.* (re.++ ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re "."))) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re ",") (re.range "0" "9") (re.range "0" "9")) (re.++ (re.opt (str.to.re "-")) ((_ re.loop 1 3) (re.range "0" "9")) (str.to.re ",") (re.range "0" "9") (re.range "0" "9") (str.to.re "\x0a"))))))
; ^[^\~\`\!\@\#\$\%\^\&\*\(\)\-\_\=\+\\\|\[\]\{\}\;\:\"\'\,\<\./\>\?\s](([a-zA-Z0-9]*[-_\./]?[a-zA-Z0-9]{1,})*)$
(assert (str.in.re X (re.++ (re.union (str.to.re "~") (str.to.re "`") (str.to.re "!") (str.to.re "@") (str.to.re "#") (str.to.re "$") (str.to.re "%") (str.to.re "^") (str.to.re "&") (str.to.re "*") (str.to.re "(") (str.to.re ")") (str.to.re "-") (str.to.re "_") (str.to.re "=") (str.to.re "+") (str.to.re "\x5c") (str.to.re "|") (str.to.re "[") (str.to.re "]") (str.to.re "{") (str.to.re "}") (str.to.re ";") (str.to.re ":") (str.to.re "\x22") (str.to.re "'") (str.to.re ",") (str.to.re "<") (str.to.re ".") (str.to.re "/") (str.to.re ">") (str.to.re "?") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.* (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (re.opt (re.union (str.to.re "-") (str.to.re "_") (str.to.re ".") (str.to.re "/"))) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))))) (str.to.re "\x0a"))))
; X-Mailer\x3AfromReferer\x3Asearch\x2econduit\x2ecom\x2Fdss\x2Fcc\.2_0_0\.
(assert (str.in.re X (str.to.re "X-Mailer:\x13fromReferer:search.conduit.com/dss/cc.2_0_0.\x0a")))
; ^[\d]{4}[-\s]{1}[\d]{3}[-\s]{1}[\d]{4}$
(assert (str.in.re X (re.++ ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 3 3) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2eeot/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".eot/i\x0a"))))
(check-sat)
