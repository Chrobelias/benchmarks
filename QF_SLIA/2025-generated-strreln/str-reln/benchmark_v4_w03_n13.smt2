(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.++ (str.to_re "337") (re.union (str.to_re "62") (re.* (str.to_re "99"))))))
(assert (str.in_re y (re.++ (re.++ (str.to_re "329") (re.+ (str.to_re "258"))) (re.range "5" "9"))))
(assert (str.in_re z (re.+ (re.++ (re.* (str.to_re "189")) (re.* (str.to_re "91"))))))
(assert (str.in_re a (re.* (re.++ (str.to_re "86") (str.to_re "633")))))

(assert (< (+ (* 7 (str.to_int x)) (* 5 (str.to_int y)) (* 10 (str.to_int z)) (* (- 8) (str.to_int a))) 80))
(assert (<= (+ (* (- 5) (str.len x)) (* 7 (str.len y)) (- (str.len z)) (* (- 2) (str.len a))) 74))
(assert (>= (+ (str.to_int x) (* 4 (str.to_int y)) (* 6 (str.to_int z)) (* (- 2) (str.to_int a))) 45))

(check-sat)