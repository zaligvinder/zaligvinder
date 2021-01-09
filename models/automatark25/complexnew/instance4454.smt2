(declare-const X String)
; ^(/w|/W|[^<>+?$%{}&])+$
(assert (str.in.re X (re.++ (re.+ (re.union (str.to.re "/w") (str.to.re "/W") (str.to.re "<") (str.to.re ">") (str.to.re "+") (str.to.re "?") (str.to.re "$") (str.to.re "%") (str.to.re "{") (str.to.re "}") (str.to.re "&"))) (str.to.re "\x0a"))))
; spas\s+This\s+\x7D\x7BPassword\x3A\s+OSSProxy\x5Chome\/lordofsearch
(assert (str.in.re X (re.++ (str.to.re "spas") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "This") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "}{Password:\x1b") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "OSSProxy\x5chome/lordofsearch\x0a"))))
(check-sat)
