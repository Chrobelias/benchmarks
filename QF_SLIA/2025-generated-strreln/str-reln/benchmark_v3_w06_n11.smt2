(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.union (re.+ (str.to_re "238")) (re.union (str.to_re "589") (re.* (str.to_re "372"))))))
(assert (str.in_re y (re.+ (re.++ (re.union (str.to_re "6") (str.to_re "21")) (str.to_re "58")))))
(assert (str.in_re z (re.* (re.union (re.++ (re.range "6" "9") (str.to_re "62")) (str.to_re "122")))))

(assert (>= (+ (* 9 (str.len y)) (* (- 7) (str.len z)) (* (- 7) (str.to_int x))) 100))
(assert (> (+ (* 5 (str.len x)) (- (str.len y)) (* (- 2) (str.len z))) 44))
(assert (> (+ (* (- 5) (str.to_int x)) (* 5 (str.to_int y)) (* (- 9) (str.to_int z))) 38))
(assert (<= (+ (str.len z) (* (- 7) (str.to_int x)) (* (- 9) (str.to_int y)) (* 4 (str.to_int z))) 79))

(check-sat)