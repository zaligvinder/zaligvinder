(declare-const X String)
; Referer\u{3A}Host\u{3A}Host\u{3A}Subject\u{3A}online-casino-searcher\.comnetid=Excite
(assert (str.in_re X (str.to_re "Referer:Host:Host:Subject:online-casino-searcher.comnetid=Excite\u{a}")))
; snprtz\u{7C}dialnoref\u{3D}\u{25}user\u{5F}idPG=SPEEDBAR
(assert (str.in_re X (str.to_re "snprtz|dialnoref=%user_idPG=SPEEDBAR\u{a}")))
; ShadowNet\s+AID\u{2F}User-Agent\u{3A}Fen\u{ea}treEye\u{2F}dss\u{2F}cc\.2_0_0\.
(assert (str.in_re X (re.++ (str.to_re "ShadowNet") (re.+ (re.union (str.to_re " ") (str.to_re "\u{9}") (str.to_re "\u{a}") (str.to_re "\u{c}") (str.to_re "\u{d}"))) (str.to_re "AID/User-Agent:Fen\u{ea}treEye/dss/cc.2_0_0.\u{a}"))))
; isSAH\*Agentwww\.raxsearch\.comHost\u{3A}-~-\u{22}The
(assert (not (str.in_re X (str.to_re "isSAH*Agentwww.raxsearch.comHost:-~-\u{22}The\u{a}"))))
(check-sat)
