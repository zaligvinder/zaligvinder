(declare-const X String)
; www\x2Esnap\x2Ecom\w+FTX-Mailer\x3AfromReferer\x3Asearch\x2econduit\x2ecom
(assert (not (str.in.re X (re.++ (str.to.re "www.snap.com") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "FTX-Mailer:\x13fromReferer:search.conduit.com\x0a")))))
; ^[a-zA-Z][a-zA-Z0-9_]+$
(assert (not (str.in.re X (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (str.to.re "_"))) (str.to.re "\x0a")))))
; [0-9]+
(assert (str.in.re X (re.++ (re.+ (re.range "0" "9")) (str.to.re "\x0a"))))
; [:]{1}[-~+o]?[)>]+
(assert (str.in.re X (re.++ ((_ re.loop 1 1) (str.to.re ":")) (re.opt (re.union (str.to.re "-") (str.to.re "~") (str.to.re "+") (str.to.re "o"))) (re.+ (re.union (str.to.re ")") (str.to.re ">"))) (str.to.re "\x0a"))))
(check-sat)
