(declare-const X String)
; /\x2eaif[cf]?([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.aif") (re.opt (re.union (str.to.re "c") (str.to.re "f"))) (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; ^-?(\d+(,\d{3})*(\.\d+)?|\d?(\.\d+))$
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "-")) (re.union (re.++ (re.+ (re.range "0" "9")) (re.* (re.++ (str.to.re ",") ((_ re.loop 3 3) (re.range "0" "9")))) (re.opt (re.++ (str.to.re ".") (re.+ (re.range "0" "9"))))) (re.++ (re.opt (re.range "0" "9")) (str.to.re ".") (re.+ (re.range "0" "9")))) (str.to.re "\x0a")))))
; spas\s+This\s+\x7D\x7BPassword\x3A\s+OSSProxy\x5Chome\/lordofsearch
(assert (str.in.re X (re.++ (str.to.re "spas") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "This") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Password:\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "OSSProxy\x5chome/lordofsearch\x0a"))))
; ^.*(([^\.][\.][wW][mM][aA])|([^\.][\.][mM][pP][3]))$
(assert (str.in.re X (re.++ (re.* re.allchar) (re.union (re.++ (re.comp (str.to.re ".")) (str.to.re ".") (re.union (str.to.re "w") (str.to.re "W")) (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "a") (str.to.re "A"))) (re.++ (re.comp (str.to.re ".")) (str.to.re ".") (re.union (str.to.re "m") (str.to.re "M")) (re.union (str.to.re "p") (str.to.re "P")) (str.to.re "3"))) (str.to.re "\x0a"))))
; /^\/\d+\/\d\.zip$/U
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.range "0" "9")) (str.to.re "/") (re.range "0" "9") (str.to.re ".zip/U\x0a"))))
(check-sat)
