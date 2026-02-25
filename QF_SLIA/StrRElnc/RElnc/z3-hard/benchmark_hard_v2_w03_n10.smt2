(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ "45" x)))

(assert (str.in_re y (re.* (re.union (str.to_re "633") (re.+ (re.+ (re.range "3" "9")))))))
(assert (str.in_re x (re.union (str.to_re "62") (re.++ (re.range "7" "9") (re.* (str.to_re "42"))))))

(assert (> (+ (* 7 (str.to_int x)) (* (- 4) (str.to_int y))) 24))
(assert (>= (+ (* 7 (str.to_int x)) (* 6 (str.to_int y))) 29))
(assert (> (* 4 (str.len x)) 71))

(check-sat)