(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))

(assert (str.in_re x (re.+ (re.+ (str.to_re "38")))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "6") (re.union (str.to_re "772") (str.to_re "947"))))))

(assert (< (+ (str.len x) (* 6 (str.len y))) 23))
(assert (>= (+ (* 4 (str.len x)) (* (- 8) (str.len y)) (* (- 5) (str.to_int x)) (* 8 (str.to_int y))) 72))

(check-sat)