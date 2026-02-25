(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))

(assert (str.in_re y (re.++ (re.union (str.to_re "574") (re.+ (re.range "7" "9"))) (re.+ (str.to_re "23")))))
(assert (str.in_re x (re.* (re.++ (re.union (re.+ (str.to_re "1")) (str.to_re "197")) (str.to_re "391")))))

(assert (>= (+ (* 8 (str.len x)) (- (str.len y)) (* 8 (str.to_int x))) 57))
(assert (<= (+ (* (- 4) (str.len x)) (* 8 (str.len y))) 42))
(assert (< (+ (* (- 7) (str.len x)) (- (str.len y))) 56))

(check-sat)