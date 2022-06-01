(declare-const X String)
; OS\u{2F}\dSpediacom\u{2F}index\.php\?tpid=
(assert (not (str.in_re X (re.++ (str.to_re "OS/") (re.range "0" "9") (str.to_re "Spediacom/index.php?tpid=\u{a}")))))
(check-sat)
