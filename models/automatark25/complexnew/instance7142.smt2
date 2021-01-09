(declare-const X String)
; ^((\-|d|l|p|s){1}(\-|r|w|x){9})$
(assert (str.in.re X (re.++ (str.to.re "\x0a") ((_ re.loop 1 1) (re.union (str.to.re "-") (str.to.re "d") (str.to.re "l") (str.to.re "p") (str.to.re "s"))) ((_ re.loop 9 9) (re.union (str.to.re "-") (str.to.re "r") (str.to.re "w") (str.to.re "x"))))))
; download\x2Eeblocs\x2EcomHost\x3AReferer\x3A
(assert (str.in.re X (str.to.re "download.eblocs.comHost:Referer:\x0a")))
; /^POST\x20\x2fg[ao]lfstream\x26/
(assert (not (str.in.re X (re.++ (str.to.re "/POST /g") (re.union (str.to.re "a") (str.to.re "o")) (str.to.re "lfstream&/\x0a")))))
; \x2Fbar_pl\x2Fshdoclc\.fcgisource%3Dultrasearch136%26campaign%3DsnapEIHBand,
(assert (str.in.re X (str.to.re "/bar_pl/shdoclc.fcgisource%3Dultrasearch136%26campaign%3DsnapEIHBand,\x0a")))
(check-sat)
