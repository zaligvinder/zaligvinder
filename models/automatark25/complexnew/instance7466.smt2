(declare-const X String)
; /TimeToLive=[^&]*?(%60|\x60)/iP
(assert (not (str.in.re X (re.++ (str.to.re "/TimeToLive=") (re.* (re.comp (str.to.re "&"))) (re.union (str.to.re "%60") (str.to.re "`")) (str.to.re "/iP\x0a")))))
; Last.*?(\d+.?\d*)
(assert (str.in.re X (re.++ (str.to.re "Last") (re.* re.allchar) (str.to.re "\x0a") (re.+ (re.range "0" "9")) (re.opt re.allchar) (re.* (re.range "0" "9")))))
; /filename=[^\n]*\x2esmi/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".smi/i\x0a")))))
(check-sat)
