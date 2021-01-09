(declare-const X String)
; hostie\s+freeIPaddrsBardata\.warezclient\.comHost\x3AUser-Agent\x3A
(assert (not (str.in.re X (re.++ (str.to.re "hostie") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "freeIPaddrsBardata.warezclient.comHost:User-Agent:\x0a")))))
; \x2Fbar_pl\x2Fchk\.fcgiHost\x3a
(assert (not (str.in.re X (str.to.re "/bar_pl/chk.fcgiHost:\x0a"))))
; /filename=[^\n]*\x2epmd/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".pmd/i\x0a"))))
(check-sat)
