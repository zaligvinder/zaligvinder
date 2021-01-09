(declare-const X String)
; \[([\w \.]+)\]\(([\w\.:\/ ]*)\)
(assert (not (str.in.re X (re.++ (str.to.re "[") (re.+ (re.union (str.to.re " ") (str.to.re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "](") (re.* (re.union (str.to.re ".") (str.to.re ":") (str.to.re "/") (str.to.re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re ")\x0a")))))
; /^\x2frouji.txt$/mU
(assert (str.in.re X (re.++ (str.to.re "//rouji") re.allchar (str.to.re "txt/mU\x0a"))))
; (\+1 )?\d{3} \d{3} \d{4}
(assert (not (str.in.re X (re.++ (re.opt (str.to.re "+1 ")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 3 3) (re.range "0" "9")) (str.to.re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to.re "\x0a")))))
; Host\x3AX-Mailer\x3atoolbar\.wishbone\.com
(assert (not (str.in.re X (str.to.re "Host:X-Mailer:\x13toolbar.wishbone.com\x0a"))))
(check-sat)
