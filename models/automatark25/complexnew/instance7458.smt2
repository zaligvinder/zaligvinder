(declare-const X String)
; \stoolbar\.anwb\.nl.*Host\x3A
(assert (str.in.re X (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nl") (re.* re.allchar) (str.to.re "Host:\x0a"))))
; ^[-+]?[0-9]+[.]?[0-9]*([eE][-+]?[0-9]+)?$
(assert (str.in.re X (re.++ (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")) (re.opt (str.to.re ".")) (re.* (re.range "0" "9")) (re.opt (re.++ (re.union (str.to.re "e") (str.to.re "E")) (re.opt (re.union (str.to.re "-") (str.to.re "+"))) (re.+ (re.range "0" "9")))) (str.to.re "\x0a"))))
; www\.trackhits\.ccUser-Agent\x3Aiz=LOGSupremeResult
(assert (str.in.re X (str.to.re "www.trackhits.ccUser-Agent:iz=LOGSupremeResult\x0a")))
; ^[A-Z]$
(assert (str.in.re X (re.++ (re.range "A" "Z") (str.to.re "\x0a"))))
; (\/\/-->\s*)?<\/?SCRIPT([^>]*)>(\s*<!--\s)?
(assert (not (str.in.re X (re.++ (re.opt (re.++ (str.to.re "//-->") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))))) (str.to.re "<") (re.opt (str.to.re "/")) (str.to.re "SCRIPT") (re.* (re.comp (str.to.re ">"))) (str.to.re ">") (re.opt (re.++ (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "<!--") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")))) (str.to.re "\x0a")))))
(check-sat)
