(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.+ (re.+ (re.range "2" "8")))))
(assert (str.in_re x (re.++ (re.+ (str.to_re "1")) (re.+ (str.to_re "18")))))

(assert (> (+ (* 3 (str.len y)) (* (- 6) (str.to_int y))) 68))
(assert (> (+ (* 9 (str.to_int x)) (* 6 (str.to_int y))) 3))

(check-sat)