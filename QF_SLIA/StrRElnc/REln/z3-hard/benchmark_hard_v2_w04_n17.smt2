(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (str.to_re "0") (re.+ (str.to_re "720")))))
(assert (str.in_re y (re.* (re.range "1" "9"))))

(assert (< (+ (* (- 10) (str.len x)) (* 3 (str.len y))) 7))
(assert (<= (+ (* (- 6) (str.to_int x)) (* (- 4) (str.to_int y))) 1))
(assert (< (+ (* 4 (str.to_int x)) (* 7 (str.to_int y))) 61))
(assert (< (+ (* 7 (str.to_int x)) (* (- 6) (str.to_int y))) 50))

(check-sat)