(declare-const X String)
; \[([\w \.]+)\]\(([\w\.:\/ ]*)\)
(assert (not (str.in_re X (re.++ (str.to_re "[") (re.+ (re.union (str.to_re " ") (str.to_re ".") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re "](") (re.* (re.union (str.to_re ".") (str.to_re ":") (str.to_re "/") (str.to_re " ") (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to_re "_"))) (str.to_re ")\u{a}")))))
; /^\u{2f}rouji.txt$/mU
(assert (str.in_re X (re.++ (str.to_re "//rouji") re.allchar (str.to_re "txt/mU\u{a}"))))
; (\+1 )?\d{3} \d{3} \d{4}
(assert (not (str.in_re X (re.++ (re.opt (str.to_re "+1 ")) ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 3 3) (re.range "0" "9")) (str.to_re " ") ((_ re.loop 4 4) (re.range "0" "9")) (str.to_re "\u{a}")))))
; Host\u{3A}X-Mailer\u{3a}toolbar\.wishbone\.com
(assert (not (str.in_re X (str.to_re "Host:X-Mailer:\u{13}toolbar.wishbone.com\u{a}"))))
(check-sat)
