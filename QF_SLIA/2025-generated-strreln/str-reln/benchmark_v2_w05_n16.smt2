(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))

(assert (str.in_re x (re.++ (re.+ (re.range "7" "9")) (re.* (str.to_re "9")))))
(assert (str.in_re y (re.++ (str.to_re "8") (re.++ (str.to_re "95") (re.union (re.* (str.to_re "80")) (re.range "3" "5"))))))

(assert (< (+ (* 2 (str.to_int x)) (- (str.to_int y))) 52))
(assert (< (+ (* 8 (str.len x)) (* (- 4) (str.to_int x)) (* 7 (str.to_int y))) 94))
(assert (< (+ (* (- 2) (str.len y)) (* 10 (str.to_int x))) 25))

(check-sat)