(declare-const X String)
; frame_ver2\s+www\x2eurlblaze\x2enet\s+source\=IncrediFind\s+AgentHost\x3AHost\x3AHost\x3A\x2FGRSpynova3AFrom\x3A
(assert (not (str.in.re X (re.++ (str.to.re "frame_ver2") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "www.urlblaze.net") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "source=IncrediFind") (re.+ (re.union (str.to.re " ") (str.to.re "\x09") (str.to.re "\x0a") (str.to.re "\x0c") (str.to.re "\x0d"))) (str.to.re "AgentHost:Host:Host:/GRSpynova3AFrom:\x0a")))))
; www\x2Edotcomtoolbar\x2Ecom\d+DesktopAddressIDENTIFY
(assert (not (str.in.re X (re.++ (str.to.re "www.dotcomtoolbar.com") (re.+ (re.range "0" "9")) (str.to.re "DesktopAddressIDENTIFY\x0a")))))
; /filename=[^\n]*\x2ecue/i
(assert (str.in.re X (re.++ (str.to.re "/filename=") (re.* (re.comp (str.to.re "\x0a"))) (str.to.re ".cue/i\x0a"))))
(check-sat)
