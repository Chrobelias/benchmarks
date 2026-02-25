(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.+ (re.++ (re.+ (str.to_re "636")) (re.* (str.to_re "760"))))))
(assert (str.in_re x (re.* (re.union (str.to_re "44") (re.++ (str.to_re "7") (str.to_re "9"))))))

(assert (< (* (- 7) (str.to_int y)) 63))
(assert (< (+ (* (- 8) (str.len x)) (* (- 9) (str.len y))) 1))

(check-sat)