(declare-const X String)
; Host\x3A\d+ver\d+sportsUBAgent
(assert (not (str.in.re X (re.++ (str.to.re "Host:") (re.+ (re.range "0" "9")) (str.to.re "ver") (re.+ (re.range "0" "9")) (str.to.re "sportsUBAgent\x0a")))))
; /filename=[^\n]*\x2emaplet/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".maplet/i\x0a")))))
(check-sat)
