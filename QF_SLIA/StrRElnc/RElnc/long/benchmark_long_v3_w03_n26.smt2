(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))

(assert (= x (str.++ y z "74")))

(assert (str.in_re y (re.union (re.+ (str.to_re "124")) (re.* (re.* (str.to_re "6"))))))
(assert (str.in_re z (re.union (re.++ (re.* (re.range "1" "7")) (str.to_re "74")) (str.to_re "0"))))
(assert (str.in_re x (re.union (str.to_re "33") (re.* (re.++ (re.* (re.range "6" "9")) (re.range "0" "5"))))))

(assert (> (+ (* (- 10) (str.len x)) (* (- 6) (str.len y)) (- (str.len z))) 94))
(assert (< (+ (* (- 3) (str.to_int x)) (* (- 4) (str.to_int y)) (* (- 5) (str.to_int z))) 34))
(assert (= (+ (* (- 6) (str.to_int x)) (* 8 (str.to_int y)) (* (- 7) (str.to_int z))) 87))

(check-sat)