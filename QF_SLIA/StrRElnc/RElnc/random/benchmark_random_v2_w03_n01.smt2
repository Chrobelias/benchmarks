(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= (str.++ "93" x) (str.++ y "97")))

(assert (str.in_re y (re.union (str.to_re "96") (re.* (re.* (re.range "2" "9"))))))
(assert (str.in_re x (re.union (re.+ (str.to_re "36")) (re.++ (str.to_re "8") (re.+ (re.range "4" "9"))))))

(assert (<= (+ (* (- 5) (str.to_int x)) (* (- 9) (str.to_int y))) 88))
(assert (>= (+ (* (- 10) (str.len x)) (* (- 2) (str.len y))) 88))
(assert (> (* (- 6) (str.len x)) 39))

(check-sat)