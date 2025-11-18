(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (re.++ (re.range "7" "9") (str.to_re "20")))))
(assert (str.in_re y (re.++ (str.to_re "51") (re.++ (re.* (str.to_re "58")) (str.to_re "455")))))
(assert (str.in_re z (re.++ (re.+ (str.to_re "45")) (re.* (str.to_re "0")))))
(assert (str.in_re a (re.union (re.+ (str.to_re "4")) (re.++ (re.* (str.to_re "6")) (str.to_re "599")))))

(assert (> (+ (* 8 (str.len z)) (* (- 2) (str.to_int a))) 3))
(assert (> (+ (* (- 6) (str.to_int x)) (* (- 6) (str.to_int y)) (* 6 (str.to_int a))) 56))
(assert (>= (+ (* 10 (str.to_int x)) (- (str.to_int y)) (* (- 9) (str.to_int z)) (* 7 (str.to_int a))) 96))
(assert (> (+ (* (- 5) (str.len x)) (* (- 10) (str.len y)) (* (- 3) (str.len a)) (* 5 (str.to_int y))) 32))

(check-sat)