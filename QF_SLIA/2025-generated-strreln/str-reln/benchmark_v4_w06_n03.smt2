(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.+ (re.union (re.range "6" "9") (re.* (re.* (str.to_re "0")))))))
(assert (str.in_re y (re.++ (str.to_re "14") (re.+ (str.to_re "22")))))
(assert (str.in_re z (re.* (str.to_re "2"))))
(assert (str.in_re a (re.+ (re.* (re.union (re.* (str.to_re "80")) (str.to_re "284"))))))

(assert (>= (+ (* (- 3) (str.len x)) (* 6 (str.len a)) (* (- 10) (str.to_int x)) (* 6 (str.to_int y)) (* (- 2) (str.to_int a))) 61))
(assert (< (+ (* (- 10) (str.to_int x)) (* 4 (str.to_int y)) (* (- 7) (str.to_int z)) (* 2 (str.to_int a))) 29))
(assert (> (+ (str.len x) (* (- 4) (str.len y)) (* (- 7) (str.len z)) (* 5 (str.len a))) 92))
(assert (<= (+ (* (- 7) (str.to_int x)) (* 2 (str.to_int y)) (* 9 (str.to_int z)) (* 4 (str.to_int a))) 32))
(assert (= (+ (* (- 2) (str.to_int x)) (* (- 8) (str.to_int y)) (* (- 9) (str.to_int z)) (* 5 (str.to_int a))) 34))

(check-sat)