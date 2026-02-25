(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re y (re.union (re.range "3" "5") (re.+ (re.+ (re.range "7" "9"))))))
(assert (str.in_re x (re.union (str.to_re "8") (re.* (re.range "0" "3")))))

(assert (< (+ (* (- 3) (str.len y)) (* 5 (str.to_int x))) 31))
(assert (<= (+ (* (- 5) (str.to_int x)) (* 2 (str.to_int y))) 76))

(check-sat)