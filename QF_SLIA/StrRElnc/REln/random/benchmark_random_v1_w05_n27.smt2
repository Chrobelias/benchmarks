(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.++ (str.to_re "1") (re.* (re.range "1" "4")))))

(assert (>= (* 7 (str.len x)) 41))
(assert (>= (* 8 (str.to_int x)) 10))
(assert (>= (* (- 6) (str.to_int x)) 32))
(assert (<= (* (- 10) (str.to_int x)) 76))
(assert (> (* 4 (str.to_int x)) 24))

(check-sat)