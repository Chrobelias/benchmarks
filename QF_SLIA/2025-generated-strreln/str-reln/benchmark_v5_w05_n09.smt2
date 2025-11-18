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

(assert (str.in_re x (re.+ (str.to_re "512"))))
(assert (str.in_re y (re.* (re.++ (re.* (str.to_re "48")) (str.to_re "899")))))
(assert (str.in_re z (re.++ (str.to_re "296") (re.* (str.to_re "73")))))
(assert (str.in_re a (re.++ (re.++ (re.+ (str.to_re "3")) (str.to_re "437")) (str.to_re "58"))))
(assert (str.in_re b (re.++ (str.to_re "4") (re.* (str.to_re "17")))))

(assert (< (+ (* 2 (str.len x)) (* (- 8) (str.len y)) (* 4 (str.len z)) (* (- 3) (str.len a)) (* (- 7) (str.len b))) 9))
(assert (= (+ (* (- 4) (str.to_int x)) (str.to_int y) (* (- 7) (str.to_int z)) (* (- 6) (str.to_int a)) (* (- 5) (str.to_int b))) 55))
(assert (< (+ (* (- 5) (str.to_int x)) (* (- 8) (str.to_int y)) (* (- 6) (str.to_int z)) (* 8 (str.to_int a)) (* (- 3) (str.to_int b))) 86))
(assert (= (+ (* 3 (str.len x)) (* 8 (str.len y)) (* (- 3) (str.len z)) (* (- 6) (str.len a)) (* 10 (str.len b))) 89))
(assert (< (+ (* (- 2) (str.to_int x)) (str.to_int y) (str.to_int z) (* (- 3) (str.to_int a)) (* (- 2) (str.to_int b))) 63))

(check-sat)