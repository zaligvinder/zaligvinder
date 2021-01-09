(declare-const X String)
; ([0]|[-]?[0]\.[0-9]+)|([-]?([1-9]+\.[0-9]+))|([-]?[1-9]+)
(assert (str.in.re X (re.union (re.++ (re.opt (str.to.re "-")) (re.+ (re.range "1" "9")) (str.to.re ".") (re.+ (re.range "0" "9"))) (re.++ (str.to.re "\x0a") (re.opt (str.to.re "-")) (re.+ (re.range "1" "9"))) (str.to.re "0") (re.++ (re.opt (str.to.re "-")) (str.to.re "0.") (re.+ (re.range "0" "9"))))))
; aohobygi\x2fzwiw\s+\+The\+password\+is\x3A
(assert (not (str.in.re X (re.++ (str.to.re "aohobygi/zwiw") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "+The+password+is:\x0a")))))
; ([Cc][Hh][Aa][Nn][Dd][Aa][Nn].*?)
(assert (not (str.in.re X (re.++ (str.to.re "\x0a") (re.union (str.to.re "C") (str.to.re "c")) (re.union (str.to.re "H") (str.to.re "h")) (re.union (str.to.re "A") (str.to.re "a")) (re.union (str.to.re "N") (str.to.re "n")) (re.union (str.to.re "D") (str.to.re "d")) (re.union (str.to.re "A") (str.to.re "a")) (re.union (str.to.re "N") (str.to.re "n")) (re.* re.allchar)))))
; ^([A-Za-z]{5})([0-9]{4})([A-Za-z]{1})$
(assert (str.in.re X (re.++ ((_ re.loop 5 5) (re.union (re.range "A" "Z") (re.range "a" "z"))) ((_ re.loop 4 4) (re.range "0" "9")) ((_ re.loop 1 1) (re.union (re.range "A" "Z") (re.range "a" "z"))) (str.to.re "\x0a"))))
; [\s]+
(assert (not (str.in.re X (re.++ (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "\x0a")))))
(check-sat)
