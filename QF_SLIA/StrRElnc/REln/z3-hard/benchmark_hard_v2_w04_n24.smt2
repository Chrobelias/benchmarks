(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "28") (re.* (str.to_re "765")))))
(assert (str.in_re x (re.* (re.+ (re.* (re.+ (str.to_re "25")))))))

(assert (< (+ (* 8 (str.to_int x)) (* 4 (str.to_int y))) 15))
(assert (< (+ (* (- 8) (str.len x)) (* (- 10) (str.len y))) 42))
(assert (= (+ (str.len x) (* (- 5) (str.len y)) (* 2 (str.to_int x))) 60))

(check-sat)