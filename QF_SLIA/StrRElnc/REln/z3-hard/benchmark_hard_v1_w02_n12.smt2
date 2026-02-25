(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.range "7" "9"))))

(assert (<= (* 5 (str.to_int x)) 23))
(assert (<= (* (- 3) (str.len x)) 47))

(check-sat)