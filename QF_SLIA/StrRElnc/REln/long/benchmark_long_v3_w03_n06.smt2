(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len z) 1000))

(assert (str.in_re x (re.* (re.union (str.to_re "3") (re.+ (re.* (str.to_re "195")))))))
(assert (str.in_re y (re.union (re.* (str.to_re "104")) (re.range "4" "9"))))
(assert (str.in_re z (re.++ (str.to_re "662") (re.union (re.+ (str.to_re "89")) (re.+ (str.to_re "152"))))))

(assert (< (+ (* (- 6) (str.to_int x)) (str.to_int y) (* (- 6) (str.to_int z))) 26))
(assert (> (+ (* 2 (str.to_int y)) (* 9 (str.to_int z))) 92))
(assert (< (+ (* (- 3) (str.len x)) (* 9 (str.len y)) (- (str.len z))) 93))

(check-sat)