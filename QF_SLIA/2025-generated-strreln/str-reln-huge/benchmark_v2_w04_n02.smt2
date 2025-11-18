(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 10))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 10))

(assert (str.in_re x (re.++ (re.* (re.range "1" "7")) (re.+ (re.+ (str.to_re "440"))))))
(assert (str.in_re y (re.* (str.to_re "1"))))

(assert (< (+ (* (- 9) (str.len x)) (* 10 (str.len y))) 83))
(assert (< (+ (* 6 (str.to_int x)) (* 10 (str.to_int y))) 30))
(assert (< (+ (* (- 9) (str.to_int x)) (* 10 (str.to_int y))) 74))
(assert (> (+ (* 4 (str.len x)) (* (- 8) (str.len y))) 30))

(check-sat)