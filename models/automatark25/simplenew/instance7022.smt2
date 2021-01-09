(declare-const X String)
; /\/click\?sid=\w{40}\&cid=/Ui
(assert (not (str.in.re X (re.++ (str.to.re "//click?sid=") ((_ re.loop 40 40) (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "&cid=/Ui\x0a")))))
(check-sat)
