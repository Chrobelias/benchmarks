(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (re.+ (re.++ (re.range "4" "7") (str.to_re "1"))) (str.to_re "36"))))
(assert (str.in_re y (re.union (re.++ (str.to_re "213") (re.* (str.to_re "434"))) (re.+ (str.to_re "39")))))
(assert (str.in_re z (re.+ (re.++ (re.union (str.to_re "800") (re.+ (str.to_re "35"))) (str.to_re "5")))))
(assert (str.in_re a (re.* (re.union (re.+ (str.to_re "59")) (str.to_re "14")))))

(assert (< (+ (* (- 8) (str.len x)) (* (- 4) (str.len y)) (* (- 10) (str.len z)) (* 10 (str.len a))) 83))
(assert (<= (+ (- (str.to_int x)) (* (- 2) (str.to_int y)) (* (- 6) (str.to_int z)) (* (- 3) (str.to_int a))) 58))
(assert (<= (+ (* (- 10) (str.len x)) (str.len y) (* (- 4) (str.len z))) 6))
(assert (<= (+ (* (- 7) (str.len x)) (* 5 (str.to_int y))) 37))
(assert (<= (+ (* 6 (str.len x)) (* (- 4) (str.len y)) (* 8 (str.len z)) (* (- 6) (str.len a))) 79))

(check-sat)