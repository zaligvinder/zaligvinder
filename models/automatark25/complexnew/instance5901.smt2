(declare-const X String)
; /filename=[^\n]*\x2em3u/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".m3u/i\x0a"))))
; /setInterval\s*\x28[^\x29]+\x2efocus\x28\x29/smi
(assert (str.in.re X (re.++ (str.to.re "/setInterval") (re.* (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "(") (re.+ (re.comp (str.to.re ")"))) (str.to.re ".focus()/smi\x0a"))))
; \x2Fbonzibuddy\x2Forigin\x3DsidefindApofisUser-Agent\x3A
(assert (str.in.re X (str.to.re "/bonzibuddy/origin=sidefindApofisUser-Agent:\x0a")))
; Agent.*as\x2Estarware\x2Ecom\s+ServerToolbarcojud\x2Edmcast\x2Ecom
(assert (not (str.in.re X (re.++ (str.to.re "Agent") (re.* re.allchar) (str.to.re "as.starware.com") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "ServerToolbarcojud.dmcast.com\x0a")))))
; ^(\d)?[ ]*[\(\.\-]?(\d{3})[\)\.\-]?[ ]*(\d{3})[\.\- ]?(\d{4})[ ]*(x|ext\.?)?[ ]*(\d{1,7})?$
(assert (not (str.in.re X (re.++ (re.opt (re.range "0" "9")) (re.* (str.to.re " ")) (re.opt (re.union (str.to.re "(") (str.to.re ".") (str.to.re "-"))) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ")") (str.to.re ".") (str.to.re "-"))) (re.* (str.to.re " ")) ((_ re.loop 3 3) (re.range "0" "9")) (re.opt (re.union (str.to.re ".") (str.to.re "-") (str.to.re " "))) ((_ re.loop 4 4) (re.range "0" "9")) (re.* (str.to.re " ")) (re.opt (re.union (str.to.re "x") (re.++ (str.to.re "ext") (re.opt (str.to.re "."))))) (re.* (str.to.re " ")) (re.opt ((_ re.loop 1 7) (re.range "0" "9"))) (str.to.re "\x0a")))))
(check-sat)
