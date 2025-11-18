(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.+ (re.range "7" "9")) (re.union (str.to_re "78") (str.to_re "19")))))
(assert (str.in_re y (re.+ (re.union (str.to_re "38") (str.to_re "3")))))

(assert (>= (+ (str.to_int x) (* 8 (str.to_int y))) 33))
(assert (>= (+ (* 9 (str.len x)) (* (- 4) (str.len y))) 78))
(assert (> (+ (* (- 2) (str.len x)) (* 3 (str.len y)) (* (- 6) (str.to_int y))) 96))

(check-sat)