(declare-const X String)
; Referer\x3AHost\x3AHost\x3ASubject\x3Aonline-casino-searcher\.comnetid=Excite
(assert (str.in.re X (str.to.re "Referer:Host:Host:Subject:online-casino-searcher.comnetid=Excite\x0a")))
; snprtz\x7Cdialnoref\x3D\x25user\x5FidPG=SPEEDBAR
(assert (str.in.re X (str.to.re "snprtz|dialnoref=%user_idPG=SPEEDBAR\x0a")))
; ShadowNet\s+AID\x2FUser-Agent\x3AFen\xeatreEye\x2Fdss\x2Fcc\.2_0_0\.
(assert (str.in.re X (re.++ (str.to.re "ShadowNet") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "AID/User-Agent:Fen\xeatreEye/dss/cc.2_0_0.\x0a"))))
; isSAH\*Agentwww\.raxsearch\.comHost\x3A-~-\x22The
(assert (not (str.in.re X (str.to.re "isSAH*Agentwww.raxsearch.comHost:-~-\x22The\x0a"))))
(check-sat)
