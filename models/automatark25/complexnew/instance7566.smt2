(declare-const X String)
; ("[^"]*")|('[^\r]*)(\r\n)?
(assert (not (str.in.re X (re.union (re.++ (str.to.re "\x22") (re.* (re.comp (str.to.re "\x22"))) (str.to.re "\x22")) (re.++ (re.opt (str.to.re "\x0d\x0a")) (str.to.re "\x0a'") (re.* (re.comp (str.to.re "\x0d"))))))))
; zopabora\x2EinfocomhoroscopeTravelInsidefromUser-Agent\x3AFrom\x3Awww\x2EZSearchResults\x2EcomExplorer
(assert (not (str.in.re X (str.to.re "zopabora.infocomhoroscopeTravelInsidefromUser-Agent:From:www.ZSearchResults.com\x13Explorer\x0a"))))
(check-sat)
