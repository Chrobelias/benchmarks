(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (= y (str.++ x "88")))

(assert (str.in_re x (re.union (re.* (str.to_re "955")) (re.++ (str.to_re "32") (str.to_re "834")))))
(assert (str.in_re y (re.+ (re.++ (re.* (re.range "4" "7")) (re.* (re.range "1" "8"))))))

(assert (< (+ (* 9 (str.len x)) (* (- 2) (str.len y)) (* 2 (str.to_int x))) 45))
(assert (>= (+ (* (- 2) (str.to_int x)) (* (- 2) (str.to_int y))) 16))

(check-sat)