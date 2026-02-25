(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (= x (str.++ "51" y)))

(assert (str.in_re x (re.union (re.* (re.range "0" "6")) (re.* (re.+ (str.to_re "72"))))))
(assert (str.in_re y (re.+ (re.+ (re.union (str.to_re "977") (re.range "0" "9"))))))

(assert (<= (+ (str.len x) (* (- 4) (str.len y))) 98))
(assert (< (+ (* 10 (str.len x)) (* (- 8) (str.len y)) (* (- 5) (str.to_int y))) 93))

(check-sat)