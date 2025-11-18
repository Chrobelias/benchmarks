(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))

(assert (str.in_re x (re.+ (re.++ (re.range "0" "7") (str.to_re "7")))))
(assert (str.in_re y (re.++ (re.union (str.to_re "823") (re.+ (str.to_re "6"))) (str.to_re "2"))))
(assert (str.in_re z (re.union (re.++ (str.to_re "34") (re.* (re.range "4" "9"))) (str.to_re "865"))))

(assert (= (+ (* 10 (str.to_int x)) (* 2 (str.to_int y)) (* (- 8) (str.to_int z))) 78))
(assert (<= (+ (* 9 (str.len x)) (* 5 (str.len y)) (* 5 (str.len z))) 97))
(assert (< (+ (* 3 (str.len z)) (* (- 8) (str.to_int x))) 8))
(assert (> (+ (* (- 5) (str.len y)) (* (- 3) (str.to_int x)) (* 5 (str.to_int y)) (- (str.to_int z))) 20))

(check-sat)