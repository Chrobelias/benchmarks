(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.++ (str.to_re "214") (re.++ (re.+ (str.to_re "937")) (str.to_re "93")))))
(assert (str.in_re x (re.+ (re.union (re.range "1" "4") (re.* (str.to_re "7"))))))

(assert (> (+ (* 4 (str.len x)) (* (- 4) (str.len y))) 9))
(assert (< (+ (* 2 (str.len y)) (* (- 8) (str.to_int y))) 26))
(assert (> (+ (* (- 10) (str.len x)) (str.len y)) 69))

(check-sat)