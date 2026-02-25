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
(assert (>= (str.len x) 1000))
(assert (>= (str.len y) 1000))

(assert (str.in_re y (re.++ (re.* (re.* (re.range "3" "7"))) (re.range "0" "8"))))
(assert (str.in_re x (re.* (str.to_re "5"))))
(assert (str.in_re z (re.+ (re.+ (str.to_re "496")))))
(assert (str.in_re a (re.+ (re.* (re.++ (str.to_re "67") (re.* (str.to_re "247")))))))

(assert (= (+ (* (- 4) (str.to_int x)) (* 9 (str.to_int y)) (* 7 (str.to_int z)) (* 3 (str.to_int a))) 20))
(assert (> (+ (* 4 (str.len x)) (* 7 (str.len y)) (* 7 (str.len z)) (* 5 (str.len a))) 66))

(check-sat)