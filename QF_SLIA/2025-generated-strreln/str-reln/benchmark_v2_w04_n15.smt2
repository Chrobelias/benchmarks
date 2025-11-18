(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.* (re.union (re.range "7" "9") (re.+ (re.range "1" "8"))))))
(assert (str.in_re y (re.++ (str.to_re "656") (re.* (re.+ (str.to_re "32"))))))

(assert (= (+ (* 9 (str.len x)) (* (- 7) (str.len y))) 96))
(assert (< (+ (* 7 (str.len x)) (* (- 5) (str.len y)) (* (- 2) (str.to_int x))) 94))
(assert (<= (* 9 (str.to_int x)) 10))

(check-sat)