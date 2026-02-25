(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= x (str.++ "87" y)))

(assert (str.in_re x (re.+ (re.union (str.to_re "434") (re.union (re.range "2" "8") (str.to_re "76"))))))
(assert (str.in_re y (re.* (re.union (re.range "4" "6") (re.* (str.to_re "27"))))))

(assert (>= (+ (* (- 5) (str.len x)) (* 7 (str.len y))) 79))
(assert (>= (+ (* 3 (str.len y)) (* (- 4) (str.to_int x))) 76))
(assert (<= (+ (str.to_int x) (* (- 6) (str.to_int y))) 61))

(check-sat)