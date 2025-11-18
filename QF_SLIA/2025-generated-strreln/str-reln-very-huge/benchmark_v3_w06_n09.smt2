(set-logic QF_SLIA)

(declare-const x String)
(declare-const y String)
(declare-const z String)

(assert (>= (str.to_int x) 0))
(assert (>= (str.len x) 100))
(assert (>= (str.to_int y) 0))
(assert (>= (str.len y) 100))
(assert (>= (str.to_int z) 0))
(assert (>= (str.len z) 100))

(assert (str.in_re x (re.union (re.++ (str.to_re "138") (re.* (str.to_re "626"))) (re.* (str.to_re "32")))))
(assert (str.in_re y (re.++ (re.range "4" "8") (re.union (re.+ (re.range "5" "9")) (str.to_re "63")))))
(assert (str.in_re z (re.++ (re.* (str.to_re "94")) (str.to_re "1"))))

(assert (< (+ (* 6 (str.len x)) (* (- 5) (str.len y)) (* 9 (str.to_int x)) (* (- 5) (str.to_int y)) (* (- 4) (str.to_int z))) 8))
(assert (< (+ (* (- 7) (str.len x)) (* (- 5) (str.len y)) (* 4 (str.len z))) 76))
(assert (< (+ (* 2 (str.len x)) (* 2 (str.len z)) (* 8 (str.to_int y))) 42))
(assert (< (+ (* 10 (str.len x)) (* 3 (str.len y)) (str.len z)) 68))

(check-sat)