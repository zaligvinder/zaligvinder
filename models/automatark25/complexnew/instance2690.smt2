(declare-const X String)
; [^\d^\-^\,^\x20]+
(assert (str.in.re X (re.++ (re.+ (re.union (re.range "0" "9") (str.to.re "^") (str.to.re "-") (str.to.re ",") (str.to.re " "))) (str.to.re "\x0a"))))
; /filename=[^\n]*\x2ermf/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".rmf/i\x0a")))))
(check-sat)
