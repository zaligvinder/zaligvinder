(set-info :smt-lib-version 2.6)
(set-logic ALL)
(set-info :source |
Generated by: Hung-En Wang, Shih-Yu Chen, Fang Yu, and Jie-Hong R. Jiang
Generated on: 2019-02-28
Generator: modified from Kaluza benchmarks
Application: Security analysis of string manipulating web applications with string length constraints
Target solver: ABC, CVC4, Norn, S3P, Trau, Z3-str3
Publication:
Hung-En Wang, Shih-Yu Chen, Fang Yu, Jie-Hong R. Jiang:
A symbolic model checking approach to the analysis of string and length constraints. ASE 2018: 623-633
|)
(set-info :license "https://creativecommons.org/licenses/by/4.0/")
(set-info :category "industrial")
(set-info :status unknown)

(declare-fun T_15 () Bool)
(declare-fun T_22 () Bool)
(declare-fun T_8 () Bool)
(declare-fun T_14 () Int)
(declare-fun T_21 () Int)
(declare-fun T_7 () Int)
(declare-fun PCTEMP_LHS_4 () String)
(assert T_8)
(assert (= T_8 (< 0 T_7)))
(assert (= T_7 (str.len PCTEMP_LHS_4))) ; len 0
(assert T_15)
(assert (= T_15 (< 1 T_14)))
(assert (= T_14 (str.len PCTEMP_LHS_4))) ; len 0
(assert T_22)
(assert (= T_22 (< 2 T_21)))
(assert (= T_21 (str.len PCTEMP_LHS_4))) ; len 0
(check-sat)
(exit)
