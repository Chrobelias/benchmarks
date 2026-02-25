(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.union (re.++ (re.+ (str.to_re "9")) (re.+ (str.to_re "614"))) (str.to_re "31"))))
(assert (str.in_re y (re.++ (str.to_re "46") (re.* (re.* (str.to_re "756"))))))

(assert (< (+ (* 4 (str.to_int x)) (* 7 (str.to_int y))) 79))
(assert (> (+ (* (- 7) (str.len x)) (* (- 3) (str.len y))) 0))
(assert (= (+ (* (- 6) (str.to_int x)) (* 10 (str.to_int y))) 85))
(assert (> (+ (str.to_int x) (* (- 8) (str.to_int y))) 24))

(check-sat)