(declare-const X String)
; zopabora\x2Einfo\s+Inside\s+SystemSleuth\s+www\x2Eyok\x2EcomHost\x3AInformationwww\x2Ezhongsou\x2EcomLite
(assert (not (str.in.re X (re.++ (str.to.re "zopabora.info") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Inside") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SystemSleuth\x13") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.yok.comHost:Informationwww.zhongsou.comLite\x0a")))))
(check-sat)
