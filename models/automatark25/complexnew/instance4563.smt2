(declare-const X String)
; /\/load_module\.php\?user\=(n1|1|2|11)$/U
(assert (str.in.re X (re.++ (str.to.re "//load_module.php?user=") (re.union (str.to.re "n1") (str.to.re "1") (str.to.re "2") (str.to.re "11")) (str.to.re "/U\x0a"))))
; ^\d*$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (str.to.re "\x0a"))))
; User-Agent\x3a\x2Fnewsurfer4\x2F
(assert (not (str.in.re X (str.to.re "User-Agent:/newsurfer4/\x0a"))))
(check-sat)
