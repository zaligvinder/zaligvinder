(declare-const X String)
; /\x2erpt([\?\x5c\x2f]|$)/smiU
(assert (not (str.in.re X (re.++ (str.to.re "/.rpt") (re.union (str.to.re "?") (str.to.re "\x5c") (str.to.re "/")) (str.to.re "/smiU\x0a")))))
; Subject\x3aPorta\x2Fasp\x2Foffers\.asp\?\x2Fiis2ebs\.aspwww\x2Esmileycentral\x2Ecom
(assert (str.in.re X (str.to.re "Subject:Porta/asp/offers.asp?/iis2ebs.aspwww.smileycentral.com\x0a")))
; Hours\w+User-Agent\x3AChildWebGuardian
(assert (not (str.in.re X (re.++ (str.to.re "Hours") (re.+ (re.union (re.range "0" "9") (re.range "A" "Z") (re.range "a" "z") (str.to.re "_"))) (str.to.re "User-Agent:ChildWebGuardian\x0a")))))
; Toolbar\s+wwwProbnymomspyo\x2fzowy
(assert (str.in.re X (re.++ (str.to.re "Toolbar") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "wwwProbnymomspyo/zowy\x0a"))))
; /filename=[^\n]*\x2enab/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".nab/i\x0a")))))
(check-sat)
