(declare-const X String)
; Center\w+Host\x3aiz=iMeshBar
(assert (not (str.in.re X (re.++ (str.to.re "Center") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "Host:iz=iMeshBar\x0a")))))
; software.*com\x2Findex\.php\?tpid=\s+Host\x3A\x2Ftoolbar\x2Fsupremetb
(assert (str.in.re X (re.++ (str.to.re "software") (re.* re.allchar) (str.to.re "com/index.php?tpid=") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Host:/toolbar/supremetb\x0a"))))
; \sKeylogging\s+ApofisToolbar
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Keylogging\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ApofisToolbar\x0a"))))
(check-sat)
