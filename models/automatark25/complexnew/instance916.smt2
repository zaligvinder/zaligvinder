(declare-const X String)
; ookflolfctm\x2fnmot\.fmu
(assert (str.in.re X (str.to.re "ookflolfctm/nmot.fmu\x0a")))
; (\/\/-->\s*)?<\/?SCRIPT([^>]*)>(\s*<!--\s)?
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "//-->") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "<") (re.opt (str.to.re "/")) (str.to.re "SCRIPT") (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.opt (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "<!--") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a"))))
; whenu\x2Ecom\d+Agent\stoWebupdate\.cgithisHost\x3aconnection
(assert (str.in.re X (re.++ (str.to.re "whenu.com\x1b") (re.+ (re.range "0" "9")) (str.to.re "Agent") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toWebupdate.cgithisHost:connection\x0a"))))
; /\x28\x3f\x3d[^)]{300}/
(assert (not (str.in.re X (re.++ (str.to.re "/(?=") ((_ re.loop 300 300) (re.comp (str.to.re ")"))) (str.to.re "/\x0a")))))
; ixqshv\x2fqzccsMM_RECO\x2EEXE%3fwwwwp-includes\x2Ftheme\x2Ephp\x3F
(assert (str.in.re X (str.to.re "ixqshv/qzccsMM_RECO.EXE%3fwwwwp-includes/theme.php?\x0a")))
(check-sat)
