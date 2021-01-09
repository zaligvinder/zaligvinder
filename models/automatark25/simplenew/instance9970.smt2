(declare-const X String)
; OS\x2F\dSpediacom\x2Findex\.php\?tpid=
(assert (not (str.in.re X (re.++ (str.to.re "OS/") (re.range "0" "9") (str.to.re "Spediacom/index.php?tpid=\x0a")))))
(check-sat)
