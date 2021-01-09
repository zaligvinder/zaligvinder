(declare-const X String)
; Subject\x3AAlexaOnline\x2521\x2521\x2521
(assert (not (str.in.re X (str.to.re "Subject:AlexaOnline%21%21%21\x0a"))))
; ^
(assert (not (str.in.re X (str.to.re "\x0a"))))
; (^(\+?\-? *[0-9]+)([,0-9 ]*)([0-9 ])*$)|(^ *$)
(assert (str.in.re X (re.union (re.++ (re.* (re.union (str.to.re ",") (re.range "0" "9") (str.to.re " "))) (re.* (re.union (re.range "0" "9") (str.to.re " "))) (re.opt (str.to.re "+")) (re.opt (str.to.re "-")) (re.* (str.to.re " ")) (re.+ (re.range "0" "9"))) (re.++ (re.* (str.to.re " ")) (str.to.re "\x0a")))))
(check-sat)
