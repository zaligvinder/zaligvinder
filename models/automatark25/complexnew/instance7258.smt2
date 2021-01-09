(declare-const X String)
; zopabora\x2EinfocomhoroscopeTravelInsidefromUser-Agent\x3AFrom\x3Awww\x2EZSearchResults\x2EcomExplorer
(assert (not (str.in.re X (str.to.re "zopabora.infocomhoroscopeTravelInsidefromUser-Agent:From:www.ZSearchResults.com\x13Explorer\x0a"))))
; ^[+]\d{1,2}\(\d{2,3}\)\d{6,8}(\#\d{1,10})?$
(assert (not (str.in.re X (re.++ (str.to.re "+") ((_ re.loop 1 2) (re.range "0" "9")) (str.to.re "(") ((_ re.loop 2 3) (re.range "0" "9")) (str.to.re ")") ((_ re.loop 6 8) (re.range "0" "9")) (re.opt (re.++ (str.to.re "#") ((_ re.loop 1 10) (re.range "0" "9")))) (str.to.re "\x0a")))))
; zopabora\x2Einfo\s+Inside.*User-Agent\x3A\s+SystemSleuthserverUser-Agent\x3a\x2Fnewsurfer4\x2FMicrosoft
(assert (str.in.re X (re.++ (str.to.re "zopabora.info") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "Inside") (re.* re.allchar) (str.to.re "User-Agent:") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "SystemSleuth\x13serverUser-Agent:/newsurfer4/Microsoft\x0a"))))
; /filename=[^\n]*\x2escr/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".scr/i\x0a")))))
(check-sat)
