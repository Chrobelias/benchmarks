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
(assert (>= (str.len y) 1000))
(assert (>= (str.len z) 1000))
(assert (>= (str.len x) 1000))

(assert (str.in_re a (re.++ (re.* (re.range "0" "8")) (str.to_re "72"))))
(assert (str.in_re y (re.* (re.++ (re.* (re.+ (str.to_re "58"))) (str.to_re "669")))))
(assert (str.in_re z (re.++ (re.+ (str.to_re "307")) (re.* (str.to_re "20")))))
(assert (str.in_re x (re.* (str.to_re "37"))))

(assert (= (+ (* (- 8) (str.len x)) (* 8 (str.len y)) (* 8 (str.len z)) (* (- 3) (str.len a))) 86))
(assert (> (+ (* (- 6) (str.to_int x)) (* 7 (str.to_int y)) (* 5 (str.to_int z)) (* 10 (str.to_int a))) 78))

(check-sat)