(declare-const X String)
; [^\d^\-^\,^\x20]+
(assert (not (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re "^") (str.to.re "-") (str.to.re ",") (str.to.re " "))) (str.to.re "\x0a")))))
; /\x2eoga([\?\x5c\x2f]|$)/smiU
(assert (str.in.re X (re.++ (str.to.re "/.oga") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a"))))
(check-sat)
