(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re x (re.+ (re.++ (str.to_re "6") (str.to_re "9")))))
(assert (str.in_re y (re.* (re.union (str.to_re "687") (re.+ (str.to_re "6"))))))

(assert (< (+ (* (- 4) (str.to_int x)) (* 9 (str.to_int y))) 20))
(assert (< (+ (str.len x) (* (- 9) (str.len y))) 69))

(check-sat)