(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.+ (re.union (re.++ (re.+ (str.to_re "57")) (str.to_re "53")) (str.to_re "1")))))
(assert (str.in_re x (re.union (re.range "3" "6") (re.+ (re.* (str.to_re "17"))))))

(assert (> (+ (* (- 8) (str.len x)) (* 10 (str.len y))) 66))
(assert (> (+ (str.len x) (* 8 (str.len y))) 62))
(assert (< (+ (* (- 3) (str.to_int x)) (* 10 (str.to_int y))) 27))

(check-sat)