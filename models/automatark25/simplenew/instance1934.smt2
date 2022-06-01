(declare-const X String)
; /^\u{2f}wp-content\u{2f}themes\u{2f}[A-Za-z0-9]\.php\?[A-Za-z0-9\u{2B}\u{2F}\u{3D}]{300}/Ui
(assert (str.in_re X (re.++ (str.to_re "//wp-content/themes/") (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9")) (str.to_re ".php?") ((_ re.loop 300 300) (re.union (re.range "A" "Z") (re.range "a" "z") (re.range "0" "9") (str.to_re "+") (str.to_re "/") (str.to_re "="))) (str.to_re "/Ui\u{a}"))))
(check-sat)
