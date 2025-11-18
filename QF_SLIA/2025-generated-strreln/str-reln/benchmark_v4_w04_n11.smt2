(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (re.++ (str.to_re "81") (re.+ (re.+ (re.range "4" "8")))))))
(assert (str.in_re y (re.+ (re.+ (re.+ (re.range "4" "9"))))))
(assert (str.in_re z (re.++ (re.+ (re.range "5" "7")) (str.to_re "764"))))
(assert (str.in_re a (re.+ (re.* (re.++ (str.to_re "51") (str.to_re "680"))))))

(assert (< (+ (- (str.len x)) (- (str.len y)) (* (- 5) (str.len z)) (* (- 3) (str.len a))) 74))
(assert (>= (+ (* 3 (str.len a)) (* (- 7) (str.to_int y))) 24))
(assert (> (+ (* (- 6) (str.to_int x)) (* 4 (str.to_int y)) (* 4 (str.to_int z)) (* (- 5) (str.to_int a))) 46))

(check-sat)