(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.union (re.+ (re.++ (re.range "7" "9") (str.to_re "62"))) (str.to_re "146"))))
(assert (str.in_re y (re.+ (re.union (re.+ (str.to_re "96")) (re.* (str.to_re "1"))))))
(assert (str.in_re z (re.++ (re.+ (re.range "7" "9")) (re.++ (str.to_re "38") (re.range "1" "3")))))
(assert (str.in_re a (re.++ (re.* (re.+ (re.* (str.to_re "231")))) (str.to_re "8"))))

(assert (< (+ (* 6 (str.len y)) (* 3 (str.len z)) (* (- 2) (str.len a))) 54))
(assert (= (+ (* 2 (str.len x)) (* 8 (str.len y)) (* 4 (str.len z)) (* (- 9) (str.len a))) 15))
(assert (> (+ (str.len x) (* 2 (str.len y)) (- (str.len a))) 92))
(assert (= (+ (* 9 (str.to_int x)) (* 3 (str.to_int y)) (* 9 (str.to_int z)) (* (- 4) (str.to_int a))) 70))
(assert (> (+ (* (- 10) (str.len y)) (* 8 (str.to_int x)) (* (- 10) (str.to_int y)) (* (- 9) (str.to_int z))) 5))

(check-sat)