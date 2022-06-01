(declare-const X String)
; /\/load_module\.php\?user\=(n1|1|2|11)$/U
(assert (str.in_re X (re.++ (str.to_re "//load_module.php?user=") (re.union (str.to_re "n1") (str.to_re "1") (str.to_re "2") (str.to_re "11")) (str.to_re "/U\u{a}"))))
(check-sat)
