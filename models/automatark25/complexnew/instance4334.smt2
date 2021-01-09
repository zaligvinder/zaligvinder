(declare-const X String)
; ^\d*\d?((5)|(0))\.?((0)|(00))?$
(assert (str.in.re X (re.++ (re.* (re.range "0" "9")) (re.opt (re.range "0" "9")) (re.union (str.to.re "5") (str.to.re "0")) (re.opt (str.to.re ".")) (re.opt (re.union (str.to.re "0") (str.to.re "00"))) (str.to.re "\x0a"))))
; /^\x2f[0-9a-f]+$/iU
(assert (str.in.re X (re.++ (str.to.re "//") (re.+ (re.union (re.range "0" "9") (re.range "a" "f"))) (str.to.re "/iU\x0a"))))
; Toolbar\s+pjpoptwql\x2frlnjSubject\x3A
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "pjpoptwql/rlnjSubject:\x0a"))))
; www\x2Emirarsearch\x2Ecom
(assert (not (str.in.re X (str.to.re "www.mirarsearch.com\x0a"))))
; zopabora\x2Einfo\s+Inside\s+SystemSleuth\s+www\x2Eyok\x2EcomHost\x3AInformationwww\x2Ezhongsou\x2EcomLite
(assert (str.in.re X (re.++ (str.to.re "zopabora.info") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Inside") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SystemSleuth\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.yok.comHost:Informationwww.zhongsou.comLite\x0a"))))
(check-sat)
