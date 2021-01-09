(declare-const X String)
; \x2Fta\x2FNEWS\x2Fpassword\x3B1\x3BOptix
(assert (str.in.re X (str.to.re "/ta/NEWS/password;1;Optix\x0a")))
; ^((Fred|Wilma)\s+Flintstone|(Barney|Betty)\s+Rubble)$
(assert (str.in.re X (re.++ (re.union (re.++ (re.union (str.to.re "Fred") (str.to.re "Wilma")) (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Flintstone")) (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "RubbleB") (re.union (str.to.re "arney") (str.to.re "etty")))) (str.to.re "\x0a"))))
; http[s]?://[a-zA-Z0-9.-/]+
(assert (not (str.in.re X (re.++ (str.to.re "http") (re.opt (str.to.re "s")) (str.to.re "://") (re.+ (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9") (re.range "." "/"))) (str.to.re "\x0a")))))
; [a-zA-Z0-9]*
(assert (str.in.re X (re.++ (re.* (re.union (re.range "a" "z") (re.range "A" "Z") (re.range "0" "9"))) (str.to.re "\x0a"))))
; Windows\s+haveFTUser-Agent\x3ADayspassword\x3B0\x3BIncorrect
(assert (not (str.in.re X (re.++ (str.to.re "Windows") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "haveFTUser-Agent:Dayspassword;0;Incorrect\x0a")))))
(check-sat)
