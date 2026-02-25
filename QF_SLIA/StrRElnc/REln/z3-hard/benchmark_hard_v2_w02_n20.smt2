(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (re.union (str.to_re "187") (str.to_re "47")) (re.+ (str.to_re "41")))))
(assert (str.in_re x (re.union (re.+ (str.to_re "50")) (re.union (re.* (str.to_re "192")) (str.to_re "1")))))

(assert (> (+ (* (- 6) (str.len x)) (* 9 (str.len y)) (* (- 4) (str.to_int y))) 24))

(check-sat)