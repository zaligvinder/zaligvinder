(declare-const X String)
; ^\d{10}$
(assert (not (str.in.re X (re.++ ((_ re.loop 10 10) (re.range "0" "9")) (str.to.re "\x0a")))))
; /^\x2frouji.txt$/mU
(assert (not (str.in.re X (re.++ (str.to.re "//rouji") re.allchar (str.to.re "txt/mU\x0a")))))
; [^a-zA-Z \-]|(  )|(\-\-)|(^\s*$)
(assert (str.in.re X (re.union (str.to.re "  ") (str.to.re "--") (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")) (re.range "a" "z") (re.range "A" "Z") (str.to.re " ") (str.to.re "-"))))
; User-Agent\x3A\d+moreKontikiHost\x3a
(assert (not (str.in.re X (re.++ (str.to.re "User-Agent:") (re.+ (re.range "0" "9")) (str.to.re "moreKontikiHost:\x0a")))))
(check-sat)
