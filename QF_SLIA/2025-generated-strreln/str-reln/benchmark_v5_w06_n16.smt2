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

(assert (str.in_re x (re.union (str.to_re "4") (re.* (str.to_re "90")))))
(assert (str.in_re y (re.+ (str.to_re "481"))))
(assert (str.in_re z (re.* (re.++ (str.to_re "89") (re.+ (str.to_re "618"))))))
(assert (str.in_re a (re.+ (str.to_re "67"))))
(assert (str.in_re b (re.* (re.union (str.to_re "66") (re.union (str.to_re "783") (re.+ (str.to_re "911")))))))

(assert (< (+ (* (- 3) (str.len x)) (* (- 2) (str.len y)) (* (- 4) (str.len z)) (* (- 6) (str.len a)) (* (- 7) (str.len b))) 94))
(assert (<= (+ (* 6 (str.len x)) (* (- 3) (str.len y)) (* (- 3) (str.len z)) (* (- 3) (str.len a)) (* (- 8) (str.len b))) 25))
(assert (< (+ (* (- 7) (str.to_int x)) (* (- 9) (str.to_int y)) (* 4 (str.to_int a)) (* (- 2) (str.to_int b))) 29))
(assert (< (+ (* (- 2) (str.len x)) (* 5 (str.len y)) (* (- 2) (str.len z)) (* (- 7) (str.len a)) (* 4 (str.len b))) 58))
(assert (< (+ (* (- 10) (str.len y)) (* 6 (str.len z)) (* (- 2) (str.len a)) (* 4 (str.to_int z))) 30))

(check-sat)