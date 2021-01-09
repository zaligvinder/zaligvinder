(declare-const X String)
; FCTB1\stoolbar\.anwb\.nlrichfind\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "FCTB1") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "toolbar.anwb.nlrichfind.com\x0a")))))
; zzzvmkituktgr\x2fetie\sHost\x3ASoftActivityYeah\!whenu\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "zzzvmkituktgr/etie") (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (str.to.re "Host:SoftActivity\x13Yeah!whenu.com\x1b\x0a")))))
; <h([1-6])>([^<]*)</h([1-6])>
(assert (not (str.in.re X (re.++ (str.to.re "<h") (re.range "1" "6") (str.to.re ">") (re.* (re.comp (str.to.re "<"))) (str.to.re "</h") (re.range "1" "6") (str.to.re ">\x0a")))))
(check-sat)
