(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (re.union (re.++ (re.range "3" "5") (str.to_re "264")) (str.to_re "63")))))
(assert (str.in_re y (re.++ (re.union (re.range "2" "6") (re.* (re.range "7" "9"))) (str.to_re "162"))))
(assert (str.in_re z (re.* (str.to_re "31"))))
(assert (str.in_re a (re.union (re.+ (str.to_re "6")) (re.+ (str.to_re "644")))))

(assert (< (+ (* 7 (str.len x)) (* 7 (str.len y)) (* 2 (str.len z)) (* (- 3) (str.len a))) 31))
(assert (< (+ (- (str.len x)) (* (- 8) (str.len z)) (* 4 (str.to_int y))) 19))
(assert (< (+ (* (- 4) (str.len x)) (* (- 5) (str.len y)) (* 3 (str.len a))) 10))

(check-sat)