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

(assert (str.in_re x (re.++ (re.+ (re.++ (re.* (re.range "0" "2")) (str.to_re "910"))) (re.range "2" "8"))))
(assert (str.in_re y (re.* (re.+ (re.+ (re.+ (str.to_re "973")))))))
(assert (str.in_re z (re.++ (re.* (str.to_re "253")) (str.to_re "912"))))
(assert (str.in_re a (re.++ (re.* (str.to_re "317")) (re.+ (str.to_re "116")))))
(assert (str.in_re b (re.+ (str.to_re "427"))))

(assert (> (+ (* 7 (str.len y)) (* (- 10) (str.len z)) (* (- 3) (str.to_int x)) (* (- 3) (str.to_int y))) 64))
(assert (< (+ (* (- 8) (str.len x)) (* (- 10) (str.len z)) (* 8 (str.to_int x)) (- (str.to_int z))) 31))
(assert (<= (+ (* (- 7) (str.to_int x)) (* (- 5) (str.to_int y)) (* 8 (str.to_int z)) (* 9 (str.to_int a)) (* 6 (str.to_int b))) 49))
(assert (> (+ (str.len y) (* (- 6) (str.len z)) (* (- 4) (str.len a)) (* 7 (str.len b))) 17))

(check-sat)