(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)
(declare-const b String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))
(assert (>= (str.to_int b) 0))

(assert (str.in_re x (re.union (re.* (re.range "1" "5")) (re.+ (str.to_re "238")))))
(assert (str.in_re y (re.+ (str.to_re "434"))))
(assert (str.in_re z (re.* (re.++ (str.to_re "48") (str.to_re "85")))))
(assert (str.in_re a (re.+ (str.to_re "45"))))
(assert (str.in_re b (re.++ (re.++ (re.+ (str.to_re "5")) (str.to_re "65")) (re.range "2" "4"))))

(assert (<= (+ (* (- 8) (str.len a)) (* (- 5) (str.to_int b))) 47))
(assert (< (+ (* 4 (str.len y)) (* (- 2) (str.len z)) (* 2 (str.len a)) (* (- 8) (str.len b))) 29))
(assert (<= (+ (* 5 (str.to_int x)) (* 4 (str.to_int y)) (* (- 4) (str.to_int z)) (* (- 8) (str.to_int a)) (* (- 9) (str.to_int b))) 18))
(assert (= (+ (* (- 8) (str.to_int x)) (* (- 2) (str.to_int y)) (* 6 (str.to_int z)) (* (- 7) (str.to_int a)) (* 2 (str.to_int b))) 84))
(assert (> (+ (* 10 (str.len x)) (* 4 (str.len y)) (* 2 (str.len z)) (* (- 9) (str.len a)) (* 2 (str.len b))) 28))

(check-sat)