(declare-const X String)
; Hourspjpoptwql\x2frlnjFrom\x3Asbver\x3aGhost
(assert (str.in.re X (str.to.re "Hourspjpoptwql/rlnjFrom:sbver:Ghost\x13\x0a")))
; /filename=[^\n]*\x2eeps/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".eps/i\x0a"))))
; ^(big5|euc(kr|jpms)|binary|greek|tis620|hebrew|ascii|swe7|koi8(r|u)|(u|keyb)cs2|(dec|hp|utf|geostd|armscii)8|gb(k|2312)|cp(8(5(0|2)|66)|932|125(0|1|6|7))|latin(1|2|5|7)|(u|s)jis|mac(ce|roman))$
(assert (str.in.re X (re.++ (re.union (str.to.re "big5") (re.++ (str.to.re "euc") (re.union (str.to.re "kr") (str.to.re "jpms"))) (str.to.re "binary") (str.to.re "greek") (str.to.re "tis620") (str.to.re "hebrew") (str.to.re "ascii") (str.to.re "swe7") (re.++ (str.to.re "koi8") (re.union (str.to.re "r") (str.to.re "u"))) (re.++ (re.union (str.to.re "u") (str.to.re "keyb")) (str.to.re "cs2")) (re.++ (re.union (str.to.re "dec") (str.to.re "hp") (str.to.re "utf") (str.to.re "geostd") (str.to.re "armscii")) (str.to.re "8")) (re.++ (str.to.re "gb") (re.union (str.to.re "k") (str.to.re "2312"))) (re.++ (str.to.re "cp") (re.union (re.++ (str.to.re "8") (re.union (re.++ (str.to.re "5") (re.union (str.to.re "0") (str.to.re "2"))) (str.to.re "66"))) (str.to.re "932") (re.++ (str.to.re "125") (re.union (str.to.re "0") (str.to.re "1") (str.to.re "6") (str.to.re "7"))))) (re.++ (str.to.re "latin") (re.union (str.to.re "1") (str.to.re "2") (str.to.re "5") (str.to.re "7"))) (re.++ (re.union (str.to.re "u") (str.to.re "s")) (str.to.re "jis")) (re.++ (str.to.re "mac") (re.union (str.to.re "ce") (str.to.re "roman")))) (str.to.re "\x0a"))))
; Points\s+newszzzvmkituktgr\x2fetieWatcherUser-Agent\x3Awww\x2Emyarmory\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Points") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "newszzzvmkituktgr/etieWatcherUser-Agent:www.myarmory.com\x0a")))))
; (LT-?)?([0-9]{9}|[0-9]{12})
(assert (str.in.re X (re.++ (re.opt (re.++ (str.to.re "LT") (re.opt (str.to.re "-")))) (re.union ((_ re.loop 9 9) (re.range "0" "9")) ((_ re.loop 12 12) (re.range "0" "9"))) (str.to.re "\x0a"))))
(check-sat)
