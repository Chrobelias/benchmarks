(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (>= (str.len a) 1000))

(assert (str.in_re x (re.union (re.+ (str.to_re "89")) (re.++ (str.to_re "934") (str.to_re "233")))))
(assert (str.in_re a (re.++ (str.to_re "98") (re.+ (re.* (str.to_re "4"))))))
(assert (str.in_re z (re.+ (re.++ (str.to_re "107") (re.+ (re.range "0" "2"))))))
(assert (str.in_re y (re.union (re.+ (re.range "5" "7")) (str.to_re "2"))))

(assert (> (+ (* (- 6) (str.len x)) (* (- 2) (str.len y)) (- (str.len z)) (* 3 (str.len a))) 60))
(assert (< (+ (* 3 (str.to_int x)) (* 7 (str.to_int y)) (* (- 6) (str.to_int z)) (* 4 (str.to_int a))) 49))

(check-sat)