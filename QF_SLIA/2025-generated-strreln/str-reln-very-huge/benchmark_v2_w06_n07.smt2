(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))

(assert (str.in_re x (re.++ (re.union (re.range "7" "9") (re.range "2" "7")) (re.+ (str.to_re "206")))))
(assert (str.in_re y (re.union (str.to_re "18") (re.* (re.range "6" "9")))))

(assert (<= (+ (* 10 (str.len y)) (* (- 7) (str.to_int x))) 71))
(assert (< (+ (* (- 3) (str.len x)) (* 7 (str.to_int x))) 53))
(assert (< (+ (* 2 (str.len x)) (* (- 3) (str.len y)) (* (- 5) (str.to_int x))) 15))

(check-sat)