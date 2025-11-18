(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.* (re.* (re.union (str.to_re "66") (re.range "1" "7"))))))
(assert (str.in_re y (re.union (str.to_re "990") (re.union (str.to_re "1") (re.+ (re.range "6" "9"))))))

(assert (> (+ (str.len x) (* (- 3) (str.len y))) 34))
(assert (> (+ (* 4 (str.len x)) (* (- 5) (str.to_int y))) 63))
(assert (< (+ (* (- 2) (str.len x)) (* 4 (str.len y))) 55))
(assert (<= (+ (* (- 4) (str.to_int x)) (str.to_int y)) 33))
(assert (>= (* 5 (str.to_int y)) 59))

(check-sat)