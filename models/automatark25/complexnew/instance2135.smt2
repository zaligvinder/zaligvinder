(declare-const X String)
; /\/click\?sid=\w{40}\&cid=/Ui
(assert (str.in.re X (re.++ (str.to.re "//click?sid=") ((_ re.loop 40 40) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "&cid=/Ui\x0a"))))
; ^[a-zA-Z]\:\\.*|^\\\\.*
(assert (str.in.re X (re.union (re.++ (re.union (re.range "a" "z") (re.range "A" "Z")) (str.to.re ":\x5c") (re.* re.allchar)) (re.++ (str.to.re "\x5c\x5c") (re.* re.allchar) (str.to.re "\x0a")))))
(check-sat)
