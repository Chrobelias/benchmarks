(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.+ (re.++ (re.++ (str.to_re "108") (str.to_re "5")) (re.range "4" "9")))))
(assert (str.in_re y (re.* (str.to_re "117"))))

(assert (< (+ (* 5 (str.to_int x)) (* (- 10) (str.to_int y))) 52))
(assert (>= (+ (* 6 (str.len x)) (* 3 (str.len y)) (* (- 5) (str.to_int y))) 38))
(assert (= (+ (* (- 5) (str.to_int x)) (* 8 (str.to_int y))) 78))
(assert (<= (+ (* (- 7) (str.len x)) (* 9 (str.len y)) (* 10 (str.to_int y))) 44))

(check-sat)