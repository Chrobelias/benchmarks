(set-logic QF_SLIA)

(declare-const x String)

(assert (>= (str.to_int x) 0))

(assert (str.in_re x (re.* (re.* (re.++ (re.range "7" "9") (str.to_re "103"))))))

(assert (<= (str.to_int x) 72))
(assert (>= (* 6 (str.to_int x)) 33))
(assert (<= (+ (* (- 7) (str.len x)) (* (- 2) (str.to_int x))) 89))

(check-sat)