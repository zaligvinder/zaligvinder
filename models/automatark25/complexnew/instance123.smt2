(declare-const X String)
; /filename=[^\n]*\x2eair/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".air/i\x0a"))))
; /^\x2frouji.txt$/mU
(assert (not (str.in.re X (re.++ (str.to.re "//rouji") re.allchar (str.to.re "txt/mU\x0a")))))
(check-sat)
