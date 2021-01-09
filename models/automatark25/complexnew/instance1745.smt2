(declare-const X String)
; \x2Fdss\x2Fcc\.2_0_0\.GoogleHXDownloadasdbiz\x2Ebiz
(assert (str.in.re X (str.to.re "/dss/cc.2_0_0.GoogleHXDownloadasdbiz.biz\x0a")))
; media\x2Edxcdirect\x2Ecom\.smx\?PASSW=SAHHost\x3AProAgentIDENTIFY
(assert (not (str.in.re X (str.to.re "media.dxcdirect.com.smx?PASSW=SAHHost:ProAgentIDENTIFY\x0a"))))
; /filename=[^\n]*\x2eaom/i
(assert (not (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".aom/i\x0a")))))
; (\bprotected\b.*(public))|(\bprivate\b.*(protected))|(\bprivate\b.*(public))
(assert (str.in.re X (re.union (re.++ (str.to.re "protected") (re.* re.allchar) (str.to.re "public")) (re.++ (str.to.re "private") (re.* re.allchar) (str.to.re "protected")) (re.++ (str.to.re "\x0aprivate") (re.* re.allchar) (str.to.re "public")))))
; /q=[a-f0-9]+$/Ui
(assert (not (str.in.re X (re.++ (str.to.re "/q=") (re.+ (re.union (re.range "a" "f") (re.range "0" "9"))) (str.to.re "/Ui\x0a")))))
(check-sat)
