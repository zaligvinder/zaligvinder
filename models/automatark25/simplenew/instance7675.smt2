(declare-const X String)
; /^\x2frouji.txt$/mU
(assert (str.in.re X (re.++ (str.to.re "//rouji") re.allchar (str.to.re "txt/mU\x0a"))))
(check-sat)
