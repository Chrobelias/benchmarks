(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)
(declare-const a String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.to_int y) 0))
(assert (>= (str.to_int z) 0))
(assert (>= (str.to_int a) 0))

(assert (str.in_re x (re.* (re.union (re.+ (str.to_re "660")) (re.* (str.to_re "954"))))))
(assert (str.in_re y (re.union (re.+ (re.* (str.to_re "7"))) (re.* (str.to_re "63")))))
(assert (str.in_re z (re.++ (re.union (re.union (re.+ (str.to_re "362")) (str.to_re "55")) (str.to_re "46")) (str.to_re "156"))))
(assert (str.in_re a (re.* (re.+ (re.union (str.to_re "6") (re.+ (str.to_re "941")))))))

(assert (<= (+ (* 6 (str.len x)) (* (- 2) (str.len y)) (* (- 10) (str.len z)) (* 3 (str.len a))) 27))
(assert (< (+ (* (- 2) (str.len x)) (* 9 (str.len y)) (* (- 9) (str.len z)) (* 4 (str.len a))) 85))
(assert (= (+ (* 7 (str.len x)) (* (- 7) (str.len y)) (* (- 9) (str.len z)) (* 9 (str.len a))) 56))
(assert (<= (+ (str.len x) (* 8 (str.len y)) (* (- 4) (str.len z)) (* (- 5) (str.len a))) 8))
(assert (>= (+ (* (- 9) (str.to_int x)) (str.to_int y) (* 3 (str.to_int z)) (* (- 6) (str.to_int a))) 38))

(check-sat)