(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (re.* (re.* (re.range "6" "9"))))))
(assert (str.in_re y (re.+ (re.++ (str.to_re "37") (re.* (str.to_re "46"))))))
(assert (str.in_re z (re.union (str.to_re "182") (re.+ (re.union (re.+ (str.to_re "475")) (str.to_re "26"))))))
(assert (str.in_re a (re.+ (re.++ (str.to_re "432") (str.to_re "22")))))

(assert (= (+ (* (- 10) (str.to_int x)) (* 5 (str.to_int y)) (* 9 (str.to_int z)) (* (- 9) (str.to_int a))) 11))
(assert (<= (+ (* (- 5) (str.len x)) (* (- 9) (str.len y)) (* (- 4) (str.len z)) (* (- 9) (str.len a))) 37))
(assert (> (+ (- (str.to_int x)) (* 10 (str.to_int y)) (* (- 8) (str.to_int z)) (* 3 (str.to_int a))) 81))
(assert (> (+ (* 3 (str.to_int x)) (* (- 4) (str.to_int y)) (* 8 (str.to_int z)) (* (- 8) (str.to_int a))) 4))

(check-sat)