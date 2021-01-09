(declare-const X String)
; /filename=[^\n]*\x2efon/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".fon/i\x0a"))))
; /mmlocate[^\x00]*?([\x3b\x7c\x26\x60]|\x24\x28)/
(assert (str.in.re X (re.++ (str.to.re "/mmlocate") (re.* (re.comp (str.to.re "\x00"))) (re.union (str.to.re "$(") (str.to.re ";") (str.to.re "|") (str.to.re "&") (str.to.re "`")) (str.to.re "/\x0a"))))
; <([^<>\s]*)(\s[^<>]*)?>
(assert (not (str.in.re X (re.++ (str.to.re "<") (re.* (re.union (str.to.re "<") (str.to.re ">") (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (re.opt (re.++ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d")) (re.* (re.union (str.to.re "<") (str.to.re ">"))))) (str.to.re ">\x0a")))))
; \x2Easpxdata\.warezclient\.comWinCrashrunningUser-Agent\x3Awowokay
(assert (not (str.in.re X (str.to.re ".aspxdata.warezclient.comWinCrashrunningUser-Agent:wowokay\x0a"))))
; /filename=[^\n]*\x2emim/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".mim/i\x0a"))))
(check-sat)
